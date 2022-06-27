package com.callor.memo.service;

import org.springframework.web.multipart.MultipartFile;

import com.callor.memo.persistence.MemoDao;

public interface MemoService extends MemoDao {
	public String fileUp(MultipartFile file) throws Exception;
}
