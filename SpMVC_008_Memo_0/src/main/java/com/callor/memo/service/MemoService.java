package com.callor.memo.service;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.callor.memo.model.MemoVO;
import com.callor.memo.persistence.MemoDao;

public interface MemoService extends MemoDao {
	
	public String insertMemosAndFile(MemoVO memoVO, MultipartFile file);
	public String insertMemosAndFiles(MemoVO memoVO, MultipartHttpServletRequest files);

}
