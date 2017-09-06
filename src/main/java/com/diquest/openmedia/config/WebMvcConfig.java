package com.diquest.openmedia.config;


import com.diquest.openmedia.web.interceptor.SiteInterceptor;
import kr.qusi.spring.http.ExtendedMediaType;
import kr.qusi.spring.servlet.ExcelViewResolver;
import kr.qusi.spring.servlet.JsonViewResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.tiles3.SpringBeanPreparerFactory;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import java.util.ArrayList;
import java.util.List;

@EnableWebMvc
@Configuration
@ComponentScan(
        basePackages = "com.diquest.openmedia.web.controller"
        , useDefaultFilters = false
        , includeFilters = {
        @ComponentScan.Filter(value = Controller.class, type = FilterType.ANNOTATION)
}
)
public class WebMvcConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(siteInterceptor());
    }

    @Bean
    public SiteInterceptor siteInterceptor() {
        return new SiteInterceptor();
    }

    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer
                .favorPathExtension(false)
                .ignoreAcceptHeader(true)
                .favorParameter(true)
                .useJaf(false)
                .parameterName("_format")
                .defaultContentType(MediaType.TEXT_HTML)
                .mediaType("html", MediaType.TEXT_HTML)
                .mediaType("json", MediaType.APPLICATION_JSON)
                .mediaType("xls", ExtendedMediaType.APPLICATION_XLS);
    }

    @Bean
    public ContentNegotiatingViewResolver contentNegotiatingViewResolver(ContentNegotiationManager manager) {
        // Tiles ViewResolver
        TilesViewResolver tilesViewResolver = new TilesViewResolver();

        // JSP ViewResolver
        InternalResourceViewResolver jspViewResolver = new InternalResourceViewResolver();
        jspViewResolver.setViewClass(JstlView.class);
        jspViewResolver.setPrefix("/WEB-INF/view/");
        jspViewResolver.setSuffix(".jsp");

        // JSON ViewResolver
        JsonViewResolver jsonViewResolver = new JsonViewResolver();

        // Excel ViewResolver
        ExcelViewResolver excelViewResolver = new ExcelViewResolver();
        excelViewResolver.setPrefix("/WEB-INF/excel/");

        // Content Negotiating ViewResolver
        ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
        resolver.setContentNegotiationManager(manager);
        resolver.setUseNotAcceptableStatusCode(true);

        List<ViewResolver> resolvers = new ArrayList<ViewResolver>();
        resolvers.add(tilesViewResolver);
        resolvers.add(jspViewResolver);
        resolvers.add(jsonViewResolver);
        resolvers.add(excelViewResolver);

        resolver.setViewResolvers(resolvers);
        return resolver;
    }

    @Bean
    public TilesConfigurer tilesConfigurer() {
        // Tiles
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setDefinitions("classpath:config/tiles-config.xml");
        tilesConfigurer.setCheckRefresh(true);
        tilesConfigurer.setPreparerFactoryClass(SpringBeanPreparerFactory.class);

        return tilesConfigurer;
    }

    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxInMemorySize(0);
        multipartResolver.setMaxUploadSize(52428800);
        multipartResolver.setDefaultEncoding("UTF-8");
        return multipartResolver;
    }

}
