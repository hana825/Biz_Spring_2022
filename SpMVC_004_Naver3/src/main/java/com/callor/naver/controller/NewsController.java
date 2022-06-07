package com.callor.naver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/news")
@Controller
public class NewsController {
	
	@RequestMapping(value= {"/",""})
	public String home() {
		return "news/list";
	}
	@RequestMapping(value="/list")
	public String list() {
		return null;
	}
}
