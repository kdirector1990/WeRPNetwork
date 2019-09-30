package com.pj.erp.service;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.pj.erp.vo.UserVO;

public class UserLoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		UserVO vo = (UserVO)authentication.getPrincipal();
		String name = vo.getE_name();
		String username = vo.getUsername();
		String position_code = vo.getPosition_code();
		String position_name = vo.getPosition_name();
		String department_code = vo.getDepartment_code();
		String department_name = vo.getDepartment_name();
		String authority = vo.getAuthorities().toString();
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("username", username);
		request.getSession().setAttribute("pCode", position_code);
		request.getSession().setAttribute("pName", position_name);
		request.getSession().setAttribute("dCode", department_code);
		request.getSession().setAttribute("dName", department_name);
		request.getSession().setAttribute("auth", authority);
		request.getSession().setAttribute("ADMIN", 0);
		request.getSession().setAttribute("HR", 0);
		request.getSession().setAttribute("MS", 0);
		request.getSession().setAttribute("MF", 0);
		request.getSession().setAttribute("CT", 0);
		request.getSession().setAttribute("FT", 0);
		request.getSession().setAttribute("ST", 0);
		System.out.println(authority);
		if(authority.contains("ROLE_MS")==true) {
			request.getSession().setAttribute("MS", 1);
		}
		if(authority.contains("ROLE_HR")==true) {
			request.getSession().setAttribute("HR", 1);
		}
		if(authority.contains("ROLE_MF")==true) {
			request.getSession().setAttribute("MF", 1);
		}
		if(authority.contains("ROLE_CT")==true) {
			request.getSession().setAttribute("CT", 1);
		}
		if(authority.contains("ROLE_FT")==true) {
			request.getSession().setAttribute("FT", 1);
		}
		if(authority.contains("ROLE_ST")==true) {
			request.getSession().setAttribute("ST", 1);
		}
		if(authority.contains("ROLE_ADMIN")==true) {
			request.getSession().setAttribute("ADMIN", 1);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index");
		dispatcher.forward(request, response);
		
	}

}
