package com.callor.naver.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.callor.naver.config.QualifierConfig;
import com.callor.naver.model.BookVO;
import com.callor.naver.persistence.BookDao;
import com.callor.naver.service.BookService;

import lombok.extern.slf4j.Slf4j;

/*
 * bookServiceV1
 * : BookService interface를 상속받은 클래스가 다수 있을 때 
 * Controller에서 어떤 클래스를 지금 연결하여 사용할 것인가의 문제가 발생한다.
 * 
 * 그럴때 @Service Annotation에 이름(식별자)을 부착하여 두고
 * 클래스 중에서 필요한 부분을 선택할 수 있도록 하기 위하여 부착하는 것이다.
 */
@Slf4j
@Service(QualifierConfig.SERVICE.BOOKS_V1)
public class BookServiceImplV1 implements BookService{
	
	/*
	 * GenericDao를 상속받아 BookDao를 만들고, BookDao를 상속받아 BookService를 만들었다.
	 * 이러한 다중상속관계에서 BookDao를 사용하여 서비스를 구현하려고 한다.
	 * 
	 * 보통 Dao를 설정할 때 private final로 선언하고 생성자에서 주입받아 사용했다.
	 * 그런데 다중상속관계에서 각각의 상속이 얽히면서 무한 반복 구조가 만들어질 수 있다.
	 * 이때는 생성자 주입을 할 수 없고, setter(@Autowired) 주입으로 사용해야 한다.
	 */
	@Autowired
	private BookDao bookDao;

	/*
	 MySQL Create 명령문
	만약 tbl_books table이 없으면 table을 생성하라
	CREATE TABLE IF NOT EXISTS tbl_books
	 */
	
	/*
	 * Spring에서 어떤 자동화된 코드를 실행하고 싶을 때 method를 만들고 
	 * method에 @Autowired를 설정해두면 서비스가 처음 실행될 때 method를 자동으로 실행해준다.
	 */
	@Autowired
	@Override
	public void create_book_table() {
		log.debug("CREATE TABLE");
		/*
		 BookDap의 create_book_table() method를 실행. 만약 exception이 발생하면 무시.
		 */
		try {
			/*
			 * dao에 create table SQL을 작성해두고 Service 클래스에 Autowired된 method를 선언하고 자동으로 실행되도록 한다.
			 */
			bookDao.create_book_table();
			log.debug("BOOK TABLE 생성 OK!!");
		} catch (Exception e) {
			log.debug("BOOK TABLE 생성 못함!!");
		}
	}
	
	@Override
	public List<BookVO> findByTitle(String title) {
		return null;
	}

	@Override
	public List<BookVO> findByAuthor(String author) {
		return null;
	}

	@Override
	public List<BookVO> findByPublisher(String publisher) {
		return null;
	}

	@Override
	public List<BookVO> findByPrice(int price) {
		return null;
	}

	@Override
	public List<BookVO> selectAll() {
		List<BookVO> books = bookDao.selectAll();
		return books;
	}

	@Override
	public BookVO findById(String id) {
		BookVO bookVO = bookDao.findById(id);
		return bookVO;
	}

	@Override
	public int insert(BookVO vo) {
		/*
		 * myBatis에서 DB에 INSERT를 수행하고 나면 INSERT된 데이터의 행 개수를 return 한다.
		 * 만약 return된 값이 0이라면 한 개의 데이터도 INSERT하지 못한 것이다.
		 * 1 이상의 정수값이 return되면 몇 개의 데이터가 INSERT되었는지 확인할 수 있다.
		 */
		int ret = bookDao.insert(vo);
		return ret;
	}

	@Override
	public int update(BookVO vo) {
		bookDao.update(vo);
		return 0;
	}

	@Override
	public int delete(String id) {
		bookDao.delete(id);
		return 0;
	}

	@Override
	public BookVO save(BookVO bookVO) {
		bookDao.insert(bookVO);
		return null;
	}


}
