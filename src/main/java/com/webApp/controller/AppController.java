package com.webApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webApp.model.User;
import com.webApp.model.UserRepo;

@Controller
public class AppController {

	@Autowired
	private UserRepo userRepo;

	@RequestMapping("")
	public String loginPage() {
		return "LoginPage";

	}

	@RequestMapping("/LoginPage")
	public String loginHomePage(@RequestParam("userName") String userName, @RequestParam("password") String password,
			Model model) {
		User u = null;
		try {
			u = userRepo.findByemail(userName);
		} catch (Exception e) {
			System.out.println("User not found!!");
		}
		if (u != null) {
			model.addAttribute("UserName", userName);

			return "HomePage";
		}
		return "LoginPage";
	}
}
