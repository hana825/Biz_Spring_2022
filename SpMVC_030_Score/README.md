# 성적처리 프로젝트
* SpMVC_030_Score
* base-package : com.callor.score

## DB연결
* MySQL의 schoolDB

## Table
* tbl_student, tbl_score, tbl_subject

## DB 연결을 위한 Dependency 설정
* Spring-jdbc
* commons-dbcp2
* mybatis
* mybatis-spring
* mysql-connector/J
* spring-framework : 5.2.22.REL
* lombok
* logback-classic

## package 설정
* model package, persistence package

## mapper folder 생성
* /WEB-INF/spring/mapper

## VO 클래스
* tbl_student, tbl_score, tbl_subject를 참조하여 각각 StudentVO, ScoreVO, SubjectVO를 model package에 생성

## Dao 인터페이스
* persistence.GenericDao interface selectAll(), findById(), insert(), update(), delete() method 선언

## Student 정보 요청
* http://localhost:8080/score/student 로 요청을 하면 학생데이터 전체를 JSON으로 웹 화면에 보여주는 코드 작성
* StudentController에 @ResponseBody가 부착된 home() method 선언
* StudentService.selectAll()
* StudentDao.selectAll()
* student-mapper.xml.selectAll