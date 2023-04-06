package com.personalProject.employeeManagement.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.personalProject.employeeManagement.models.Employee;
import com.personalProject.employeeManagement.services.EmployeeService;
import com.personalProject.employeeManagement.services.UserService;

@Controller
public class EmployeeController {
	private final UserService userServ;
	private final EmployeeService employeeServ;
	public EmployeeController(EmployeeService employeeServ, UserService userServ) {
		this.employeeServ = employeeServ;
		this.userServ = userServ;
	}
	
	@GetMapping("/employee/create")
	public String createEmployee(@ModelAttribute("employeeName")Employee employee, HttpSession session, Model model) {
		if(session.getAttribute("user_id")==null) {
			return "redirect:/login";
		}
		model.addAttribute("user", userServ.getOne((Long)session.getAttribute("user_id")));
		model.addAttribute("allEmployees", employeeServ.getAll());
		return "employee/create.jsp";
	}

    @PostMapping("/employee/process")
    public String processCreateEmployee(@Valid @ModelAttribute("employeeName") Employee employee, BindingResult result,
    HttpSession session, Model model) {
		
		if (result.hasErrors()) {
//			model.addAttribute("user", userServ.getOne((Long)session.getAttribute("user_id")));
			model.addAttribute("allEmployees", employeeServ.getAll());
			return "employee/create.jsp";
		}
		

		employeeServ.create(employee);
		return "redirect:/";
	}
    
    @GetMapping("/employee/{id}/edit")
    public String editEmployee(@PathVariable("id") Long id, Model  model, HttpSession session){
        model.addAttribute("user", userServ.getOne((Long)session.getAttribute("user_id")));
        model.addAttribute("employeeName", employeeServ.getOne(id));
        model.addAttribute("allEmployees", employeeServ.getAll());
        return "employee/edit.jsp";
    }
    
    @PutMapping("/process/{id}/edit")
    public String processEditEmployee(@Valid @ModelAttribute("employeeName") Employee employee, BindingResult result, HttpSession session, Model model) {
    	if(result.hasErrors()) {
    		return "employee/edit.jsp";
    	}
    	model.addAttribute("user", userServ.getOne((Long)session.getAttribute("user_id")));
    	model.addAttribute("allEmployees", employeeServ.getAll());
    	employeeServ.update(employee);
    	return "redirect:/";
    }
    
    @GetMapping("/employee/{id}/view")
    public String view(@PathVariable("id") Long id, Model model, HttpSession session) {
        model.addAttribute("user", userServ.getOne((Long)session.getAttribute("user_id")));
        model.addAttribute("employeeName", employeeServ.getOne(id));
    	employeeServ.getOne(id);
    	return "employee/displayOne.jsp";
    }
    
    
    @DeleteMapping("/employee/{id}")
	public String delete(@PathVariable("id") Long id) {
		employeeServ.delete(id);
		return "redirect:/";
	}
}
