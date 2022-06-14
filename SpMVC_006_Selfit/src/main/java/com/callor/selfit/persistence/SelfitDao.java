package com.callor.selfit.persistence;

import java.util.List;

import com.callor.selfit.model.StartMenuDTO;
import com.callor.selfit.model.WorkOutDTO;

public interface SelfitDao {
	public List<WorkOutDTO> workOutView();
	public List<StartMenuDTO> selectStartMenu();
	public List<StartMenuDTO> selectDaySet(String sc_num);
}
