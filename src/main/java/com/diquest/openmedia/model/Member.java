package com.diquest.openmedia.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * Created by DK on 2017. 4. 17..
 */
@Data
@ToString
public class Member extends BaseModel implements UserDetails {

    /** 관리키 */
    private Integer id;

    /** 로그인 ID */
    private String login_id;

    /** 로그인 암호 */
    private String password;

    /** 이름 */
    private String name;

    /** 설명 */
    private String description;

    /** 기본 관리권한 */
    private String role_basic;

    /** 계정 관리권한 */
    private String role_member;

    /** 생성 일자 */
    private Date created;

    /** 수정 일자 */
    private Date updated;

    private List<GrantedAuthority> authorities;

    private List<GrantedAuthority> convertCrudToRole(String name, String crud) {
        List<GrantedAuthority> roles = new ArrayList<>();

        if (crud != null) {
            for (String role : crud.split(",")) {
                if ("C".equals(role)) {
                    roles.add(new SimpleGrantedAuthority(name + "_CREATE"));
                } else if ("R".equals(role)) {
                    roles.add(new SimpleGrantedAuthority(name + "_READ"));
                } else if ("U".equals(role)) {
                    roles.add(new SimpleGrantedAuthority(name + "_UPDATE"));
                } else if ("D".equals(role)) {
                    roles.add(new SimpleGrantedAuthority(name + "_DELETE"));
                }
            }
        }

        return roles;
    }

    public boolean isRole(String role) {
        return getAuthorities() != null && getAuthorities().contains(new SimpleGrantedAuthority(role));
    }

    @JsonIgnore
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (authorities != null) {
            return authorities;
        }

        authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        authorities.addAll(convertCrudToRole("ROLE_BASIC", role_basic));
        authorities.addAll(convertCrudToRole("ROLE_MEMBER", role_member));

        return authorities;
    }

    @JsonIgnore
    @Override
    public String getUsername() {
        return getLogin_id();
    }

    @JsonIgnore
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @JsonIgnore
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @JsonIgnore
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @JsonIgnore
    @Override
    public boolean isEnabled() {
        return true;
    }
}
