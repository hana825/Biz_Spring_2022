package com.callor.selfit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.selfit.service.SelfitService;

@Controller
@RequestMapping(value="/workout")
public class SelfitController {
	
	private final SelfitService selfitService;
	public SelfitController(SelfitService selfitService) {
		this.selfitService = selfitService;
	}
	
	// localhost:8080/selfit/workout.dayset/01-001 URL로 요청을 받고 sc_num에 등급ID(01-001) 값을 받겠다는 선언
	@RequestMapping(value="/dayset/{sc_num}", method=RequestMethod.GET)
	public String daySet(@PathVariable("sc_num") String sc_num, Model model) {
		
		selfitService.getDaySetList(model, sc_num);
		return "workout/dayset";
	}

}
