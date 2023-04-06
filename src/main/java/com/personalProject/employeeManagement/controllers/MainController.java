package com.personalProject.employeeManagement.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.personalProject.employeeManagement.services.EmployeeService;
import com.personalProject.employeeManagement.services.UserService;

@Controller
public class MainController {
	private final UserService userServ;
	private final EmployeeService employeeServ;

public MainController(UserService userServ, EmployeeService employeeServ) {
	this.userServ = userServ;
	this.employeeServ = employeeServ;
}
//================================Get Routes================================
	@GetMapping("/")
	public String home( HttpSession session, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/register";
		}
		model.addAttribute("loggedInUser", userServ.getOne((Long) session.getAttribute("user_id")));
        model.addAttribute("allEmployees", employeeServ.getAll());
		return "main/dashboard.jsp";
	} 
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

//================================Post Routes================================
}

