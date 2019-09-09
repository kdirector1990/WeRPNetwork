package com.pj.erp.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.pj.erp.vo.UserVO;

public class UserAuthenticationService implements UserDetailsService{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	public UserAuthenticationService() {}
	
	public UserAuthenticationService(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
				Map<String, Object> user = sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.loginCheck", username);
				Map<String, Object> auth = sqlSession.selectOne("com.pj.erp.persistence.ERPDAO.authCheck", username);
				if(user == null) throw new UsernameNotFoundException(username);
				String e_name = user.get("E_NAME").toString();
				String position_code = user.get("POSITION_CODE").toString();
				String position_name = user.get("POSITION_NAME").toString();
				String department_code = user.get("DEPARTMENT_CODE").toString();
				String department_name = user.get("DEPARTMENT_NAME").toString();
				List<GrantedAuthority> authority = new ArrayList<GrantedAuthority>();
				authority.add(new SimpleGrantedAuthority(auth.get("AUTHORITY").toString()));
				return new UserVO(user.get("USERNAME").toString(),
						user.get("PASSWORD").toString(),
						(Integer)Integer.valueOf(user.get("ENABLED").toString()) == 1,
						true, true, true,
						authority, e_name, position_code, position_name, department_code, department_name );
	}

}
