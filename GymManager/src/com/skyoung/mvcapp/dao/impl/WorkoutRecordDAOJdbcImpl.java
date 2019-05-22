package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.WorkoutRecordDAO;
import com.skyoung.mvcapp.domain.WorkoutRecord;
import com.skyoung.mvcapp.query.WorkoutRecordInitResult;

public class WorkoutRecordDAOJdbcImpl extends DAO<WorkoutRecord> implements WorkoutRecordDAO {

	@Override
	public List<WorkoutRecord> getALL() {
		String sql = "SELECT CardID, CheckinTime FROM workoutrecord";
		return getForList(sql);
	}
	
	@Override
	public List<WorkoutRecord> getByCardID(String CardID) {
		String sql = "SELECT CardID, CheckinTime FROM workoutrecord WHERE CardID = ? ORDER BY CheckinTime DESC";
		return getForList(sql, CardID);
	}

	@Override
	public List<WorkoutRecordInitResult> getALLInit() {
		DAO<WorkoutRecordInitResult> dao = new DAO<WorkoutRecordInitResult>(WorkoutRecordInitResult.class);
		String sql = "SELECT workoutrecord.CardID, workoutrecord.CheckinTime, Name, Gender "
				+ "FROM workoutrecord inner join membercard on workoutrecord.CardID = membercard.CardID "
				+ "ORDER BY CheckinTime DESC";
		return dao.getForList(sql);
	}

	@Override
	public void insert(WorkoutRecord workoutRecord) {
		String sql = "INSERT INTO workoutrecord(CardID, CheckinTime) VALUES(?, ?)";
		update(sql, workoutRecord.getCardID(), workoutRecord.getCheckinTime());
	}

	@Override
	public void delete(String CheckinTime, String CardID) {
		String sql = "DELETE FROM workoutrecord WHERE CardID = ? AND CheckinTime = ?";
		update(sql, CardID, CheckinTime);
	}

	@Override
	public long getCountWithCardID(String CardID) {
		String sql = "SELECT count(CardID) FROM workoutrecord WHERE CardID = ?";
		return getForValue(sql, CardID);
	}

}
