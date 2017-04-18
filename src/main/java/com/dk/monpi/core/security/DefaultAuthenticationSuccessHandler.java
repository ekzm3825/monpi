package com.dk.monpi.core.security;

import kr.qusi.spring.util.JsonUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

@Slf4j
public class DefaultAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        if (JsonUtils.isJsonRequest(request)) {
            String targetUrl = this.determineTargetUrl(request, response, authentication);

            Map<String, Object> map = new LinkedHashMap<String, Object>();
            map.put(this.getTargetUrlParameter(), targetUrl);

            JsonUtils.responseWriter(request, response, map);
        }
        else {
            super.onAuthenticationSuccess(request, response, authentication);
        }
    }

    @Override
    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {
        String targetUrl = determineTargetUrl(request, response, authentication);

        if (response.isCommitted()) {
            log.debug("Response has already been committed. Unable to redirect to {}", targetUrl);
            return;
        }

        this.getRedirectStrategy().sendRedirect(request, response, targetUrl);
    }

    /**
     * 로그인 후 이동할 URL 판단
     * 
     * @param request
     * @param response
     * @return targetUrl
     * @deprecated {@link #determineTargetUrl(HttpServletRequest, HttpServletResponse, Authentication)}
     */
    @Deprecated
    @Override
    protected String determineTargetUrl(HttpServletRequest request, HttpServletResponse response) {
        return this.determineTargetUrl(request, response, null);
    }

    /**
     * 로그인 후 이동할 URL 판단
     * 
     * @param request
     * @param response
     * @param authentication
     * @return targetUrl
     */
    public String determineTargetUrl(HttpServletRequest request, HttpServletResponse response,
                                     Authentication authentication) {
        String targetUrl = super.determineTargetUrl(request, response);

        // ContextPath 대응
        if (this.getContextPath(request) != null && targetUrl.startsWith("/"))
            targetUrl = this.getContextPath(request) + "/" + targetUrl;

        return targetUrl;
    }

    public String getContextPath(HttpServletRequest request) {
        return StringUtils.hasText(request.getContextPath()) ? request.getContextPath() : null;
    }

}
