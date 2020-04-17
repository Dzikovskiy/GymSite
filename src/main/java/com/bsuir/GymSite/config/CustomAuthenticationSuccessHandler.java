package com.bsuir.GymSite.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@Configuration
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {


    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                        Authentication authentication) throws IOException {

        Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());

        if (roles.contains("DISPATCHER")) {
            httpServletResponse.sendRedirect("/dispatcher");
        }else if (roles.contains("FOREMAN")) {
            httpServletResponse.sendRedirect("/foreman");
        }else if (roles.contains("TECH")) {
            httpServletResponse.sendRedirect("/tech");
        } else {
            httpServletResponse.sendRedirect("/tech"); // we dont have just "/" mapping  so redirect will be to technologist panel
        }
    }
}