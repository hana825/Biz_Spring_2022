package com.callor.school.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.callor.school.dao.StudentDao;
import com.callor.school.domain.StudentVO;
import com.callor.school.service.StudentService;

@Service
public class StudentServiceImplV1 implements StudentService{
	
	private final StudentDao stDao;
	public StudentServiceImplV1(StudentDao stDao) {
		this.stDao = stDao;
	}

	@Override
	public List<StudentVO> selectAll() {
		return stDao.selectAll();
	}

	// TODO 학생 데이터 번호로 조회
	@Override
	public StudentVO FindByStNum(String stNum) {
		return stDao.findByNum(stNum);
	}

	// TODO 학생데이터를 추가
	@Override
	public Integer insert(StudentVO stVO) {
		return null;
	}

	@Override
	public Integer update(StudentVO stVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer delete(String stNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudentVO> findByStTel(String stTel) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudentVO> findByStName(String stName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudentVO> findByStAddr(String stAddr) {
		// TODO Auto-generated method stub
		return null;
	}

}
