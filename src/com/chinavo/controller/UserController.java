package com.chinavo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("/login")
	public String login(String username,String password,HttpServletRequest request) {
		System.out.print("用户名："+username+"密码："+password);
		if(username.equals("huxt")||username.equals("liby")) {
			request.setAttribute("username", username);
			request.setAttribute("password", password);
			return "WEB-INF/views/content";	
		}else {
			return "index";
		}
		
	}
	@RequestMapping("/retrieveIndex")
	public String retrieveIndex() {

		return "WEB-INF/views/retrieve";
		
	}
	@RequestMapping("/indexIndex")
	public String indexIndex() {

		return "WEB-INF/views/buildIndex";
		
	}

}
