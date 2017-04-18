package com.dk.monpi.module.common.service;

import com.diquest.infochatter2.module.common.model.SearchCriteria;
import com.diquest.infochatter2.module.corpus.model.ChatGroup;
import com.diquest.infochatter2.module.corpus.model.CorpusQna;
import com.diquest.infochatter2.module.corpus.service.ChatBasicService;
import com.diquest.infochatter2.module.corpus.service.ChatGroupService;
import com.diquest.infochatter2.module.corpus.service.CorpusQnaService;
import com.diquest.infochatter2.module.dialog.model.DialogAgent;
import com.diquest.infochatter2.module.dialog.model.DialogSvc;
import com.diquest.infochatter2.module.dialog.model.DlgModel;
import com.diquest.infochatter2.module.dialog.service.DialogAgentService;
import com.diquest.infochatter2.module.dialog.service.DialogSvcService;
import com.diquest.infochatter2.module.dialog.service.DlgModelService;
import com.diquest.infochatter2.module.dictionary.model.DicDoact;
import com.diquest.infochatter2.module.dictionary.model.DicNamedentity;
import com.diquest.infochatter2.module.dictionary.model.DicSpeechact;
import com.diquest.infochatter2.module.dictionary.service.DicDoactService;
import com.diquest.infochatter2.module.dictionary.service.DicNamedentityService;
import com.diquest.infochatter2.module.dictionary.service.DicSpeechactService;
import com.diquest.infochatter2.module.simulator.model.Dunit;
import com.diquest.infochatter2.module.simulator.service.DunitService;
import com.diquest.infochatter2.util.JsTree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * JsTree 서비스
 *
 * @author yongseoklee
 */
@Service
public class JstreeService {

    @Autowired
    private ChatGroupService chatGroupService;

    @Autowired
    private ChatBasicService chatBasicService;

    @Autowired
    private DicDoactService dicDoactService;

    @Autowired
    private DicNamedentityService dicNamedentityService;

    @Autowired
    private DialogAgentService dialogAgentService;

    @Autowired
    private DicSpeechactService dicSpeechactService;

    @Autowired
    private DialogSvcService dialogSvcService;

    @Autowired
    private DlgModelService dlgModelService;

    @Autowired
    private DunitService dunitService;

    @Autowired
    private CorpusQnaService corpusQnaService;



    /**
     * JsTree - 채팅그룹
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getChatGroup(String[] selectedIds) {
        List<ChatGroup> list = chatGroupService.getAllGroupList();
        return new JsTree.Mapper("groupId", "groupName").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 의도
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getDoact(String[] selectedIds) {
        List<DicDoact> list = dicDoactService.getAllDoactList();
        return new JsTree.Mapper("doactId", "doactName").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 화행 (디사 포함)
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getSpeechactWithDisa(String[] selectedIds) {
        List<DicSpeechact> list = new ArrayList<>();
        list.addAll(dicSpeechactService.getAllDisaSpeechactList());
        list.addAll(dicSpeechactService.getAllSpeechactList());

        return new JsTree.Mapper("id", "sa").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 화행
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getSpeechact(String[] selectedIds) {
        List<DicSpeechact> list = dicSpeechactService.getAllSpeechactList();
        return new JsTree.Mapper("id", "sa").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 화행(디사)
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getSpeechactDisa(String[] selectedIds) {
        List<DicSpeechact> list = dicSpeechactService.getAllDisaSpeechactList();
        return new JsTree.Mapper(null, "sa").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 개체명 (디사 포함)
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getNamedentityWithDisa(String[] selectedIds) {
        List<DicNamedentity> list = new ArrayList<>();
        list.addAll(dicNamedentityService.getAllDisaNamedentityList());
        list.addAll(dicNamedentityService.getAllNamedentityList());

        return new JsTree.Mapper("id", "namedentity").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 개체명
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getNamedentity(String[] selectedIds) {
        List<DicNamedentity> list = dicNamedentityService.getAllNamedentityList();
        return new JsTree.Mapper("id", "namedentity").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 개체명(디사)
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getNamedentityDisa(String[] selectedIds) {
        List<DicNamedentity> list = dicNamedentityService.getAllDisaNamedentityList();
        return new JsTree.Mapper(null, "namedentity").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 연계서비스
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getDialogSvc(String[] selectedIds) {
        List<DialogSvc> list = dialogSvcService.getAllSvcList();
        return new JsTree.Mapper("serviceId", "serviceName").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 에이전트
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getDialogAgent(String[] selectedIds) {
        List<DialogAgent> list = dialogAgentService.getAllAgentList();
        return new JsTree.Mapper("agentId", "agentName").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 대화모델
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getDialogModel(String[] selectedIds) {
        List<DlgModel> list = dlgModelService.getAllModelList();
        return new JsTree.Mapper("modelId", "modelName").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - Dunit
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getDunit(String[] selectedIds) {
        List<Dunit> list = dunitService.getAllDunitList();
        return new JsTree.Mapper("dunitId", "dunitName").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 연관어분석 카테고리
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getRelationCategory(String[] selectedIds, List<Integer> groupIds) {
        SearchCriteria criteria = new SearchCriteria();
        criteria.or().andIn("GROUP_ID", groupIds);
        List<CorpusQna> list = corpusQnaService.getCorpusCategory(criteria);

        return new JsTree.Mapper(null, "category").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 군집분석
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */
    public String getCluster(String[] selectedIds, List<String> clusters) {
        List<CorpusQna> list = new ArrayList<>();
        for(int i=0; i<clusters.size(); i++) {
            CorpusQna corpusQna = new CorpusQna();
            corpusQna.setCluster(clusters.get(i));
            list.add(corpusQna);
        }
        return new JsTree.Mapper(null, "cluster").parseAsHtml(list, selectedIds);
    }

    /**
     * JsTree - 키워드분석 그룹선택 트리
     *
     * @param selectedIds 선택된 ID 목록
     * @return jstree 포멧에 맞춘 html (jstree html_data)
     */

    public String getKeywordGroup(String[] selectedIds) {
        List<ChatGroup> list = chatGroupService.getAllGroupList();
        return new JsTree.Mapper("groupId", "category").parseAsHtml(list, selectedIds);
    }

}
