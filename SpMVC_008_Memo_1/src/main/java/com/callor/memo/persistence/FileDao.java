package com.callor.memo.persistence;

import java.util.List;

import com.callor.memo.model.FilesVO;

public interface FileDao extends GenericDao<FilesVO, Long> {
	
	public List<FilesVO> findByMemoSeq(long m_seq);
	public int insertFiles(List<FilesVO> fileNames);

}
