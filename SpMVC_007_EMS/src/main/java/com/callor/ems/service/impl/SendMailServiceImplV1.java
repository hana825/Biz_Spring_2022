package com.callor.ems.service.impl;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.callor.ems.model.EmsVO;
import com.callor.ems.service.SendMailService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SendMailServiceImplV1 implements SendMailService {
	
	// 실질적으로 메일을 Naver 통해 전송할 주체
	private final JavaMailSender sender;
	public SendMailServiceImplV1(JavaMailSender sender) {
		this.sender = sender;
	}

	@Override
	public void sendMail(EmsVO emsVO) {
		// mail 전송하기 전에 필수정보에 대해서 확인
		log.debug("받는 사람 Email : {}", emsVO.getE_to_email());
		log.debug("받는 사람 이름 : {}", emsVO.getE_to_name());
		log.debug("제목 : {}", emsVO.getE_subject());
		
		// mail 전송하기 위한 Helper Class 가져오기
		MimeMessage message = sender.createMimeMessage();

	}

}
