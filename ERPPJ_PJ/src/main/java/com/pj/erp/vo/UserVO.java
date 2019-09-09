package com.pj.erp.vo;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserVO extends User{
	
	private String e_name;
	private String position_code;
	private String position_name;
	private String department_code;
	private String department_name;
	

	public UserVO(String username, String password, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities, String e_name, String position_code, String position_name, String department_code, String department_name) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.e_name = e_name;
		this.position_code = position_code;
		this.position_name = position_name;
		this.department_code = department_code;
		this.department_name = department_name;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getPosition_code() {
		return position_code;
	}

	public void setPosition_code(String position_code) {
		this.position_code = position_code;
	}

	public String getPosition_name() {
		return position_name;
	}

	public void setPosition_name(String position_name) {
		this.position_name = position_name;
	}

	public String getDepartment_code() {
		return department_code;
	}

	public void setDepartment_code(String department_code) {
		this.department_code = department_code;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	

}
