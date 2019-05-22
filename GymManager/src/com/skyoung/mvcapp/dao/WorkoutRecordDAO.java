package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.WorkoutRecord;
import com.skyoung.mvcapp.query.WorkoutRecordInitResult;

public interface WorkoutRecordDAO {

	public List<WorkoutRecord> getALL();
	
	public List<WorkoutRecord> getByCardID(String CardID);
	
	public List<WorkoutRecordInitResult> getALLInit();
	
	public void insert(WorkoutRecord workoutRecord);
	
	public void delete(String CheckinTime, String CardID);
	
	/**
	 * 返回和 CardID 相等的记录数
	 * @param CardID
	 * @return
	 */
	public long getCountWithCardID(String CardID);
}
