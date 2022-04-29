package com.callor.school.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.school.domain.StudentVO;
import com.callor.school.service.StudentService;

// Controller level에 @RequestMapping을 설정하면 Controller의 mapping과 method의 mapping이 서로 연결되어 @RequestMapping을 구성한다.
// localhost:8080/school/student : StudentController의 mapping이 연결
// localhost:8080/school/student : StudentController#list의 mapping 연결
@RequestMapping(value="/student")
@Controller
public class StudentController {
	
	// Dependency inject 중 생성자 injection
	private final StudentService stService;
	public StudentController(StudentService stService) {
		this.stService = stService;
	}
	
	/* return type이 String type인 method의 경우
	 * null 값을 return하면 Request Path와 같은 jsp파일을 찾아서 rendering을 수행한다.
	 * 단, @ResponseBody 설정이 없어야 한다.
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("ST_LIST", stService.selectAll());
		
		// @RequestMapping이 student/list이기 때문에 return null 을 수행하면 return "student/list"를 수행한 것과 동일한 효과
		return null;
	}
	
	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String input() {
		return null;
	}

	@RequestMapping(value="/insert", method= RequestMethod.GET)
	public String insert() {
		return null;
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(String stNum, Model model) {
		
		StudentVO stVO = stService.FindByStNum(stNum);
		model.addAttribute("ST",stVO);
		return null;
	}
	
	@RequestMapping(value="/update", method = RequestMethod.GET)
	public String update() {
		return null;
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String delete() {
		return null;
	}
}
