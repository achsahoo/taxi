package com.taxi.demo.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.taxi.demo.Entity.AdminDetails;
import com.taxi.demo.Entity.UserDetails;
import com.taxi.demo.dao.AdminDetailsRepository;

@Service
public class EmailService {

	@Autowired
	private AdminDetailsRepository emailRepository;

	
	//get admin mails from database for sending mail
		public ArrayList<String> allEmail() {
			
			ArrayList<String> allMail=new ArrayList<String>();
			 Iterable<AdminDetails> mail=emailRepository.findAll();
			 for (AdminDetails email : mail) {
				 allMail.add(email.getEmail());
				 
				 
			}
		return allMail;
		}
		
		//get all user number from database
		public ArrayList<String> allnunmber() {
			ArrayList<String> allno=new ArrayList<String>();
			 Iterable<AdminDetails> no=emailRepository.findAll();
			 for (AdminDetails number : no) {
				 allno.add(number.getPhoneno());
				 
			}
		return allno;
		}
		
		
		//get user mails from database for sending mail
				public ArrayList<String> finduseremail() {
					
					ArrayList<String> allMail=new ArrayList<String>();
					 Iterable<AdminDetails> mail=emailRepository.findAll();
					 for (AdminDetails email : mail) {
						 allMail.add(email.getEmail());
						 
						 
					}
				return allMail;
				}

		
	}


	
	

