package com.taxi.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.taxi.demo.dao.AdminDetailsRepository;


@Service
public class LoginService {

	
	@Autowired
	private AdminDetailsRepository admindao;
	
	
	public int LogIn(String uid,String password)
	{
	
		int role;
		role=admindao.findByEId(uid, password);
		
		return role;
	}


	
	
}
