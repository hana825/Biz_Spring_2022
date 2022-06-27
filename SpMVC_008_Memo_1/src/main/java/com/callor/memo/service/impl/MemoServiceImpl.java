package com.callor.memo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.callor.memo.model.FilesVO;
import com.callor.memo.model.MemoVO;
import com.callor.memo.persistence.FileDao;
import com.callor.memo.persistence.MemoDao;
import com.callor.memo.service.FileUpService;
import com.callor.memo.service.MemoService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("memoService")
public class MemoServiceImpl implements MemoService {
	
	protected final MemoDao memoDao;
	protected final FileUpService fileService;
	protected final FileDao fileDao;
	public MemoServiceImpl(MemoDao memoDao, @Qualifier("fileService") FileUpService fileService, FileDao filedao) {
		this.memoDao = memoDao;
		this.fileService = fileService;
		this.fileDao = filedao;
	}

	@Override
	public String insertMemoAndFile(MemoVO memoVO, MultipartFile file) {
		
		// 게시판 내용(text들)을 먼저 insert 실행
				int ret = memoDao.insert(memoVO);
				
				// 게시판 내용을 insert 하고 나면 bbsVO.b_seq 값이 새로 생성된 상태가 된다.
				
				log.debug("INSERT {}",ret);
				
				// 정상적으로 BBS 내용이 insert 되었으면
				if(ret > 0) {
					try {
						// 파일 업로드 하기
						String fileName = fileService.fileUp(file);
						
						// 업로드된 파일정보로 imageVO 데이터 생성하기
						FilesVO imageVO = FilesVO.builder()
								.i_originalName(file.getOriginalFilename())
								.i_imageName(fileName)
								.i_bseq(memoVO.getM_seq())
								.build();
						// tbl_images에 추가하기
						fileDao.insert(imageVO);
						log.debug(imageVO.toString());
						return imageVO.getI_imageName();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						log.debug("FILE UP FAIL");
						return "FILE UP FAIL";
					}
				}
		return null;
	}
	
	
	@Autowired
	@Override
	public void create_memo_table() {
		memoDao.create_memo_table();
		
	}

	@Override
	public List<MemoVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemoVO findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(MemoVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(MemoVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int delete(MemoVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}


}
