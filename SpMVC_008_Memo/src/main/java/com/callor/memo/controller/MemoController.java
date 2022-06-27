package com.callor.memo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.callor.memo.model.MemoVO;
import com.callor.memo.service.MemoService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Configuration
@RequestMapping(value="/memo")
public class MemoController {
	
	@Autowired
	private MemoService memoService;
	
	@RequestMapping(value="/write",method=RequestMethod.GET)
	public String write(@ModelAttribute("memoVO") MemoVO memoVO, Model model) {
		
		// 주입받은 bbsVO 객체 데이터를 form(.jsp)로 전달하기
		model.addAttribute("bbsVO",memoVO);
		return "memo/input";
		
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write(@ModelAttribute("memoVO") MemoVO memoVO, 
			@RequestParam("up_file")  MultipartFile file, Model model) {
		
		log.debug("받은 데이터 {}" , memoVO.toString());
		log.debug("받은 파일 {}" , file.getOriginalFilename());
		
		String imageFile = memoService.insertMemosAndFile(memoVO, file);
		model.addAttribute("IMAGE", imageFile);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String detail(String seq,Model model) {
		
		try {
			long m_seq = Long.valueOf(seq);
			MemoVO memoVO = memoService.findById(m_seq);
			model.addAttribute("MEMOS",memoVO);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return null;
	}
	
	@ModelAttribute("memoVO")
	private MemoVO memoVO() {
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
		
		MemoVO memoVO = MemoVO.builder()
						.m_date(dayFormat.format(date))
						.m_time(timeFormat.format(date))
						.m_author("na")
						.build();
		
		log.debug(memoVO.toString());
		return memoVO;
	}
	

}
