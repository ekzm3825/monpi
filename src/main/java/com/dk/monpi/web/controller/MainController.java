package com.dk.monpi.web.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
public class MainController {

    @RequestMapping(value = "/main.do", produces = MediaType.TEXT_HTML_VALUE)
    public ModelAndView main(HttpServletRequest request) throws Exception {

        log.debug("ppap");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login/login");

        return modelAndView;
    }

    @RequestMapping(value = "/test/list.do", produces = MediaType.TEXT_HTML_VALUE)
    public ModelAndView list(HttpServletRequest request) throws Exception {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("test/list");
        return modelAndView;
    }
}
