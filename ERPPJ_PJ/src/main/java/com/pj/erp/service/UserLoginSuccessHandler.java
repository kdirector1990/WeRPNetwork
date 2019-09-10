package com.pj.erp.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
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
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("username", username);
		request.getSession().setAttribute("pCode", position_code);
		request.getSession().setAttribute("pName", position_name);
		request.getSession().setAttribute("dCode", department_code);
		request.getSession().setAttribute("dName", department_name);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index");
		dispatcher.forward(request, response);
		
	}

}
