package com.dk.monpi.core.security;

import kr.qusi.spring.util.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint;
import org.springframework.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

public class DefaultAuthenticationEntryPoint extends LoginUrlAuthenticationEntryPoint {

    public static final String DEFAULT_ERROR_CODE = "error.sec002";

    @Autowired
    private MessageSource messageSource;

    private final String errorCode;

    public DefaultAuthenticationEntryPoint(String loginFormUrl) {
        this(DEFAULT_ERROR_CODE, loginFormUrl);
    }

    public DefaultAuthenticationEntryPoint(String errorCode, String loginFormUrl) {
        super(loginFormUrl);
        this.errorCode = errorCode;
    }

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response,
                         AuthenticationException exception) throws IOException, ServletException {

        if (JsonUtils.isJsonRequest(request)) {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            String loginFormUrl = this.getLoginFormUrl();

            // ContextPath 대응
            if (this.getContextPath(request) != null && loginFormUrl.startsWith("/"))
                loginFormUrl = this.getContextPath(request) + "/" + loginFormUrl;

            Map<String, Object> map = new LinkedHashMap<String, Object>();
            map.put("message", messageSource.getMessage(errorCode, null, request.getLocale()));
            map.put("loginFormUrl", loginFormUrl);

            JsonUtils.responseWriter(request, response, map);
        }
        else {
            super.commence(request, response, exception);
        }
    }

    public String getContextPath(HttpServletRequest request) {
        return StringUtils.hasText(request.getContextPath()) ? request.getContextPath() : null;
    }

    public void setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }

}
