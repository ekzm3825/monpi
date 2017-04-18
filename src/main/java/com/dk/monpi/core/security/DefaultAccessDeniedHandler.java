package com.dk.monpi.core.security;

import kr.qusi.spring.util.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandlerImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

public class DefaultAccessDeniedHandler extends AccessDeniedHandlerImpl {

    public static final String DEFAULT_ERROR_CODE = "error.sec001";

    @Autowired
    private MessageSource messageSource;

    private final String errorCode;

    public DefaultAccessDeniedHandler() {
        this(DEFAULT_ERROR_CODE);
    }

    public DefaultAccessDeniedHandler(String errorCode) {
        this.errorCode = errorCode;
    }

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response,
                       AccessDeniedException exception) throws IOException, ServletException {
        if (JsonUtils.isJsonRequest(request)) {
            response.setStatus(HttpServletResponse.SC_FORBIDDEN);

            Map<String, Object> map = new LinkedHashMap<String, Object>();
            map.put("message", messageSource.getMessage(errorCode, null, request.getLocale()));

            JsonUtils.responseWriter(request, response, map);
        }
        else {
        	super.setErrorPage("/error/403");
            super.handle(request, response, exception);
            
        }
    }

}
