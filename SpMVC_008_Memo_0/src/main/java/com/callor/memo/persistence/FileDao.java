package com.callor.memo.persistence;

import java.util.List;

import com.callor.memo.model.ImagesVO;

public interface FileDao extends GenericDao<ImagesVO, Long> {
	
	public List<ImagesVO> findByMemoSeq(long m_seq);
	public int insertFiles(List<ImagesVO> fileNames);

}
