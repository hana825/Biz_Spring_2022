package com.callor.school.service;

import java.util.List;

import com.callor.school.domain.StudentVO;

public interface StudentService {
	
	/* CRUD method의 prototype 선언
	 * Create, insert : 새로운 데이터 추가
	 * Read, selectAll, findByStNum : 데이터 읽기
	 * Update : 기존 데이터 변경
	 * Delete : 기존 데이터 중 삭제
	 */
	public List<StudentVO> selectAll();		// read
	public StudentVO FindByStNum(String stNum);
	public Integer insert(StudentVO stVO);		// create
	public Integer update(StudentVO stVO);
	public Integer delete(String stNum);
	
	public List<StudentVO> findByStTel(String stTel);
	public List<StudentVO> findByStName(String stName);
	public List<StudentVO> findByStAddr(String stAddr);

}
