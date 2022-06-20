package com.callor.images.persistence;

import com.callor.images.model.BBsVO;

public interface BBsDao extends GenericDao<BBsVO, Long>{
	public void create_bbs_table();
}
