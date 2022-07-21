package com.callor.score.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.callor.score.model.StudentVO;
import com.callor.score.service.StudentService;

@Controller
@RequestMapping(value="/student")
public class StudentController {

	@Autowired
	@Qualifier("stServiceV1")
	private StudentService stService;
	
	@ResponseBody
	@RequestMapping(value= {"","/"}, method = RequestMethod.GET)
	public List<StudentVO> list(Model model) {
		List<StudentVO> stList = stService.selectAll();
		
		return stList;
	}

}
