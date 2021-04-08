package com.devpro.shopdoda.services.fb;

import java.util.Arrays;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.web.SignInAdapter;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.NativeWebRequest;

// xử lý nghiệp vụ login
@Service
public class FacebookSignInAdapter implements SignInAdapter {
    @Override
    public String signIn(
      String localUserId, 
      Connection<?> connection, 
      NativeWebRequest request) {
        
        SecurityContextHolder.getContext().setAuthentication(
          new UsernamePasswordAuthenticationToken(
          connection.getDisplayName(), null, 
          Arrays.asList(new SimpleGrantedAuthority("USER_FACEBOOK"))));
        
        return null;
    }
}