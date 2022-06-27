package com.callor.memo.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.memo.model.ImagesVO;
import com.callor.memo.persistence.FileDao;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	
	private final FileDao fileDao;
	public HomeController(FileDao fileDao) {
		this.fileDao = fileDao;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		log.debug("HOME");
		List<ImagesVO> files = fileDao.selectAll();
		model.addAttribute("FILES", files);
		return "home";
	}
	
}
