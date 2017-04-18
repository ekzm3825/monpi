package com.dk.monpi.web.interceptor;

import com.dk.monpi.security.LoginManager;
import kr.qusi.spring.util.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

public class SiteInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private Environment env;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response
            , Object handler, ModelAndView modelAndView) throws Exception {
        if (modelAndView == null || JsonUtils.isJsonRequest(request))
            return;

        // 사이트 관련 정보
        Map<String, Object> site = new HashMap<>();
        site.put("currentMenu", getCurrentMenu(request));
        site.put("resVer", env.getProperty("site.resource.version"));

        // 로그인 매니저
        Map<String, Object> loginManager = new HashMap<>();
        loginManager.put("isLogin", LoginManager.isLogin());
        loginManager.put("member", LoginManager.getMember());
        loginManager.put("id", LoginManager.getId());
        loginManager.put("loginId", LoginManager.getLoginId());

        modelAndView.addObject("site", site);
        modelAndView.addObject("loginManager", loginManager);
    }

    /**
     * 현재 대메뉴 조회
     *
     * @param request
     * @return
     */
    private String getCurrentMenu(HttpServletRequest request) {
        String contextPath = request.getContextPath();
        String requestURI = request.getRequestURI();

        String menu = requestURI.replaceFirst(contextPath, "");
        String[] split = menu.split("/");
        return 2 < split.length ? split[1] : null;
    }

}
