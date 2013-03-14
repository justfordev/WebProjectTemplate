package com.company.project.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HelloWorldController implements Controller {

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, String> model = new HashMap<String, String>();
		model.put("message", "Hello World!");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("welcome");
		mv.addAllObjects(model);
		return mv;
//		return new ModelAndView("welcome", model);
	}
	
	public static void main(String[] args) {
		System.out.println();
	}
	
}