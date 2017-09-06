package com.diquest.openmedia.core.security;

import kr.qusi.spring.util.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

public class DefaultAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    public static final String DEFAULT_ERROR_CODE = "error.sec000";

    @Autowired
    private MessageSource messageSource;

    private final String errorCode;

    public DefaultAuthenticationFailureHandler() {
        this(DEFAULT_ERROR_CODE);
    }

    public DefaultAuthenticationFailureHandler(String errorCode) {
        this.errorCode = errorCode;
    }

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                                        AuthenticationException exception) throws IOException, ServletException {
        if (JsonUtils.isJsonRequest(request)) {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

            Map<String, Object> map = new LinkedHashMap<String, Object>();
            map.put("message", messageSource.getMessage(errorCode, null, request.getLocale()));

            JsonUtils.responseWriter(request, response, map);
        } else {
            super.onAuthenticationFailure(request, response, exception);
        }
    }

}
