package com.dk.monpi.util;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.*;

/**
 * JsTree 유틸리티
 *
 * DISA/INFOCHATTER 에서 값은 구분자(예. >) 기준으로 계층형 구조를 가짐
 * 계층형 구조를 JsTree Node 로 쉽게 만들 수 있도록, {@link JsTree.Node} 와 {@link JsTree.Mapper} 제공
 *
 * @author yongseoklee
 */
public class JsTree {

    private JsTree() {

    }

    /**
     * JsTree Node
     *
     * @author yongseoklee
     * @see <a href="https://www.jstree.com/docs/json">JSON data</a>
     */
    @Data
    public static class Node implements Comparable {

        /** id (required) */
        private String id;

        /** parent id (required) */
        private String parent;

        /** node text **/
        private String text;

        /** string for custom */
        private String icon;

        /** status */
        private Status status;

        /** attributes for the generated LI node */
        private Attr li_attr;

        /** attributes for the generated A node */
        private Attr a_attr;

        private int level;

        @Override
        public int compareTo(Object o) {
            return id.compareTo(((Node) o).id);
        }

        @Data
        public static class Status {

            /** is the node open */
            private boolean opened;

            /** is the node disabled */
            private boolean disabled;

            /** is the node selected */
            private boolean selected;

        }

        @Data
        public static class Attr {

            private String key;

            private String value;

            public Attr() {

            }

            public Attr(String key, String value) {
                this.key = key;
                this.value = value;
            }
        }

    }

    /**
     * JsTree Mapper
     */
    @Slf4j
    @Data
    public static class Mapper {

        /** JsTree 최상위의 부모는 # */
        private static final String ROOT_PARENT = "#";

        /** 기본 구분자 */
        public static final String DEFAULT_DELIMITER = ">";

        /** 객체의 ID Property **/
        private final String idKey;

        /** 객체의 이름 Property */
        private final String nameKey;

        /** 구분자 */
        private final String delimiter;

        /**
         * JsTree Mapper
         *
         * @param idKey 객체의 ID Property
         * @param nameKey 객체의 이름 Property
         */
        public Mapper(String idKey, String nameKey) {
            this(idKey, nameKey, DEFAULT_DELIMITER);
        }

        /**
         * JsTree Mapper
         *
         * @param idKey 객체의 ID Property
         * @param nameKey 객체의 이름 Property
         * @param delimiter 구분자
         */
        public Mapper(String idKey, String nameKey, String delimiter) {
            this.idKey = idKey;
            this.nameKey = nameKey;
            this.delimiter = delimiter;
        }

        /**
         * Parser
         *
         * @param items ID/NAME 이 존재해야하며, 중복되면 안됨
         * @return
         */
        public List<Node> parse(List<?> items) {
            // 이름목록
            Map<String, String> names = new HashMap<>();
            // 노드목록
            List<Node> nodes = new ArrayList<>();

            // 이름목록 구하기 (부모이름 생성)
            for (Object item : items) {
                String id = idKey == null ? null : getProperty(item, idKey);
                String name = getProperty(item, nameKey);

                if (name == null) {
                    log.debug("Name is null (Id: {}, Name: {})", id, name);
                    continue;
                }

                names.put(name, id);

                // 부모이름 추가 (ID 없이 추가함)
                int level = getLevel(name);
                if (0 < level) {
                    String tempName = name;
                    for (int i = 0; i < level; i++) {
                        tempName = getParentName(tempName);
                        if (tempName == null)
                            break;

                        if (!names.containsKey(tempName))
                            names.put(tempName, null);
                    }
                }
            }

            for (String name : names.keySet()) {
                String id = names.get(name);
                String parentName = getParentName(name);

                Node node = new Node();
                node.setId(name);
                node.setParent(parentName == null ? ROOT_PARENT : parentName);
                node.setText(name);
                node.setA_attr(new Node.Attr(idKey, id));
                node.setLevel(getLevel(name));

                nodes.add(node);
            }

            Collections.sort(nodes);
            return nodes;
        }

        public String parseAsHtml(List<?> items, String[] selectedIds) {
            return parseAsHtml(items, selectedIds == null ? null : Arrays.asList(selectedIds));
        }

        public String parseAsHtml(List<?> items, List<String> selectedIds) {
            List<Node> nodes = parse(items);

            int beforeLevel = 0;
            StringBuilder html = new StringBuilder();

            html.append("<ul>");

            for (int i = 0; i < nodes.size(); i++) {
                String id = nodes.get(i).getId();
                String text = nodes.get(i).getText();
                int level = nodes.get(i).getLevel();

                if (i > 0) {
                    if (beforeLevel < level) {
                        html.append("<ul>");
                    } else if (beforeLevel > level) {
                        html.append("</li>");
                        while (beforeLevel > level) {
                            html.append("</ul>");
                            html.append("</li>");
                            beforeLevel--;
                        }
                    } else {
                        html.append("</li>");
                    }
                }

                boolean isSelected = false;
                if (selectedIds != null) {
                    for (String selectedId : selectedIds) {
                        if (id.equals(selectedId)) {
                            isSelected = true;
                            break;
                        }
                    }
                }

                html.append(String.format("<li id='%s' data-jstree='{\"selected\": %b}'>%s", id, isSelected, text));

                beforeLevel = level;
            }

            html.append("</ul>");

            return html.toString();
        }

        /**
         * 구분자 기준으로 깊이계산
         *
         * @param name
         * @return
         */
        private int getLevel(final String name) {
            return name == null ? 0 : name.split(delimiter).length;
        }

        /**
         * 구분자 기준으로 부모이름 계산
         *
         * @param name
         * @return
         */
        private String getParentName(final String name) {
            if (name == null)
                return null;

            int endIdx = name.lastIndexOf(delimiter);
            return endIdx == -1 ? null : name.substring(0, endIdx);
        }

        /**
         * 객체에서 Property 명 기준으로 값을 추출
         *
         * @param bean
         * @param name
         * @return
         */
        private String getProperty(Object bean, String name) {
            try {
                return BeanUtils.getProperty(bean, name);
            } catch (IllegalAccessException e) {
                log.debug("Error", e);
            } catch (InvocationTargetException e) {
                log.debug("Error", e);
            } catch (NoSuchMethodException e) {
                log.debug("Error", e);
            }

            return null;
        }
    }

}
