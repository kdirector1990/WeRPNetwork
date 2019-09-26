package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface ERPService {

	public void testreg(HttpServletRequest req, Model model);
	
	public void nfc(HttpServletRequest req, Model model);
	
	public void productList(HttpServletRequest req, Model model);
}
