package com.pj.erp.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface CT_Service {

	public int CT_insert(HttpServletRequest req, Model model);
}
