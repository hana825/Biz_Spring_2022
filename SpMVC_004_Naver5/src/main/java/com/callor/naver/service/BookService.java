package com.callor.naver.service;

import com.callor.naver.model.BookVO;
import com.callor.naver.persistence.BookDao;

public interface BookService extends BookDao {
	public BookVO save(BookVO bookVO);

}
