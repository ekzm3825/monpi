package com.dk.monpi.constant;

import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.support.PropertiesLoaderUtils;

import java.io.IOException;
import java.util.Properties;

@Slf4j
public class Constants {

    public static String CONTEXT;

    static {
        Properties props = new Properties();
        try {
            props = PropertiesLoaderUtils.loadAllProperties("config/application.properties");
        } catch (IOException e) {
            log.debug("Properties 파일읽기 실패", e);
        }

        CONTEXT = props.getProperty("server.context-path", "");
    }

}