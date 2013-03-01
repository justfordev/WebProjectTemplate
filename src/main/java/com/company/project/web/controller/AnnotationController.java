package com.company.project.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/annotation")
public class AnnotationController {
	public ModelAndView handleRequest() {
		return new ModelAndView("test");
	}
}
