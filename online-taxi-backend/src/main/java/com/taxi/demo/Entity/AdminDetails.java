package com.taxi.demo.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AdminDetails {

	
	@Id
	private String eid;
	private String password;
	private String email;
	private String phoneno;
	
	
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	
	
}
