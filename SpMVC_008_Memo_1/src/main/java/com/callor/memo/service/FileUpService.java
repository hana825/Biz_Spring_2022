package com.callor.memo.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileUpService {
	
	// 한개의 파일 업로드
	public String fileUp(MultipartFile file) throws Exception;
	// 업로드한 파일 삭제
	public boolean fileDelete(String filename) throws Exception;

}
