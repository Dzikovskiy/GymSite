package com.bsuir.GymSite.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Value("${upload.path}")
    private String uploadPath;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/img/trainers/**").addResourceLocations("file://" + uploadPath + "/");
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    }

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/contacts").setViewName("contacts");
        registry.addViewController("/trainers").setViewName("trainers");
        registry.addViewController("/subscriptions").setViewName("subscriptions");
        registry.addViewController("/lobby").setViewName("lobby");
        registry.addViewController("/").setViewName("main");
    }

}