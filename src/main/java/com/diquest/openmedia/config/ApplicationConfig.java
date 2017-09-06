package com.diquest.openmedia.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.*;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;

@Slf4j
@Configuration
@ComponentScan(basePackages = "com.diquest", excludeFilters = {
        @ComponentScan.Filter(value = Controller.class, type = FilterType.ANNOTATION),
        @ComponentScan.Filter(value = Configuration.class, type = FilterType.ANNOTATION)
})

@PropertySources({
        @PropertySource(value = "classpath:config/build.properties", ignoreResourceNotFound = true)
        , @PropertySource(value = "classpath:config/application.properties")
        , @PropertySource(value = "classpath:config/datasource.properties")
})
//@Import({WebSecurityConfig.class, DataAccessConfig.class, DisaConfig.class})
public class ApplicationConfig {

    @Autowired
    private Environment env;

    @Bean
    public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasenames(
                // eGovFrame
                "classpath:message/egovframe/message-common", "classpath:messages/egovframe/idgnr"
                // Application
                , "classpath:messages/error", "classpath:messages/validation"
        );
        messageSource.setUseCodeAsDefaultMessage(true);
        messageSource.setFallbackToSystemLocale(false);
        messageSource.setDefaultEncoding("UTF-8");
        messageSource.setCacheSeconds(3600);

        return messageSource;
    }

    /**
     * {@link org.springframework.beans.factory.annotation.Value} 를 사용하기 위해선
     * PropertySourcesPlaceholderConfigurer 를 Bean 으로 등록해야한다.
     *
     * @see <a href="http://kwonnam.pe.kr/wiki/springframework/propertysource">springframework:propertysource [권남]</a>
     */
    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
        PropertySourcesPlaceholderConfigurer configurer = new PropertySourcesPlaceholderConfigurer();
        log.info("[BOOT] PropertySourcesPlaceholderConfigurer 빈 생성");

        return configurer;
    }

}
