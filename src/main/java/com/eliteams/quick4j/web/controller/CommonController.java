package com.eliteams.quick4j.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping("404")
	public String  to404(){
		return "404";
	}
	
	@RequestMapping("401")
	public String  to401(){
		return "401";
	}
	
	@RequestMapping("500")
	public String  to500(){
		return "500";
	}

}
