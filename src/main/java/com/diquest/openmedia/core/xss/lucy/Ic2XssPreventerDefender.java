package com.diquest.openmedia.core.xss.lucy;

import com.navercorp.lucy.security.xss.servletfilter.defender.Defender;
import com.nhncorp.lucy.security.xss.XssPreventer;

/**
 * XssPreventerDefender
 * <p>
 * ">" 를 구분자로 사용하는 경우, ">" 는 XssPreventer.escape 처리대상
 * 따라서 escape 처리 후에 다시한번 역치환하도록 처리함
 *
 * @author dk
 */
public class Ic2XssPreventerDefender implements Defender {

    @Override
    public void init(String[] values) {

    }

    @Override
    public String doFilter(String value) {
        String clean = XssPreventer.escape(value);
        return clean == null ? null : clean.replaceAll("&gt;", ">");
    }

}
