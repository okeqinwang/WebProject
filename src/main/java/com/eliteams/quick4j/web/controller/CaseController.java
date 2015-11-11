package com.eliteams.quick4j.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CaseController {
	
	@RequestMapping(value="admin-area" )
	public String area(){
		
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
