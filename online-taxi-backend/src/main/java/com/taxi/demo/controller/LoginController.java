package com.taxi.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.taxi.demo.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	
	
	// login page
		@GetMapping("/login")
		public String loginpage() {
			return "login";
		}
	

	// check valid or not
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String LoginProcess(@RequestParam("eid") String eid, @RequestParam("password") String password,
			HttpServletRequest request) throws Exception {

		HttpSession session = null;
		String responsePage = "";

	
		// create Session object
		session = request.getSession();
		

		int count = loginService.LogIn(eid, password);

		if (count == 0) {

			request.setAttribute("login", "Invalid credential");
			responsePage = "login";

			return responsePage;

		} else {
			session.setAttribute("admin", "admin");
			
			return "posbook";
		}

	}

	// logout not inn use now
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = null;
		String responsePage = "";
		session = request.getSession(false);
		if (session != null) {
			session.invalidate();
			request.setAttribute("logout", " Log Out Successfully ");
		}
		responsePage = "login";
		return responsePage;

	}
	


}
