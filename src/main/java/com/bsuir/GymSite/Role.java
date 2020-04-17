package com.bsuir.GymSite;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {

    DISPATCHER, TECH, FOREMAN;

    @Override
    public String getAuthority() {
        return name();
    }
}
