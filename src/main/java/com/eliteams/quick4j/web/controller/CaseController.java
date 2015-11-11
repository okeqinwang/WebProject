package com.eliteams.quick4j.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eliteams.quick4j.web.model.BasicInfoModel;


@Controller
public class CaseController {
	
	
	   
    @RequestMapping(value="index",method=RequestMethod.GET)
    public String  index(Model model,HttpSession session){
    	System.out.println("coming into index page ");

    	BasicInfoModel m = (BasicInfoModel) session.getAttribute("m");

    	model.addAttribute("m", m);
    	
    	return "index";
    }
	
	
	@RequestMapping(value="admin-area" )
	public String area(BasicInfoModel  m,Model model,HttpSession session){
		System.out.println("area get method......");
		System.out.println(m.toString());
		
    	m.setBasic_casename("casename");
    	m.setBasic_createname("admin");
    	session.setAttribute("m",m);  
    	
        model.addAttribute("m",m); 
		
		return "admin-area";
	}
	
	@RequestMapping(value="admin-area",method=RequestMethod.POST )
	public String area_data(BasicInfoModel m){
		System.out.println("area post........"+m.toString());
		return "admin-area";
	}
	
	
	
	
	@RequestMapping(value="admin-in" )
	public String in(){
		
		return "admin-in";
	}
	
	@RequestMapping(value="admin-case" )
	public String showcase(){
		
		return "admin-area";
	}
	
	@RequestMapping(value="admin-para" )
	public String para(){
		
		return "admin-area";
	}
	
	@RequestMapping(value="admin-test" )
	public String test(){
		
		return "admin-test";
	}
	
	@RequestMapping(value="admin-done" )
	public String done(){
		
		return "admin-done";
	}
	
	
	
	
	
	
}
