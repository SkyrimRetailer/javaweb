package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.FinacialRecordDAO;
import com.skyoung.mvcapp.domain.FinacialRecord;
import com.skyoung.mvcapp.query.FinacialRecordInitResult;
import com.skyoung.mvcapp.query.StaffInitResult;

public class FinacialRecordDAOJdbcImpl extends DAO<FinacialRecord> implements FinacialRecordDAO {

	@Override
	public List<FinacialRecord> getALL() {
		String sql = "SELECT * FROM finacialrecord";
		return getForList(sql);
	}
	@Override
	public List<FinacialRecordInitResult> getALLInit(){
		DAO<FinacialRecordInitResult> dao = new DAO<FinacialRecordInitResult>(FinacialRecordInitResult.class);
		String sql = "SELECT SID, InOrOut, ConsumeType, Description, UnitPrice,"  
					+ " Amount, Total, Name, Time, Remark FROM finacialrecord inner join staff on finacialrecord.StaffID = staff.StaffID ORDER BY SID DESC";
		return dao.getForList(sql);
	}

	@Override
	public void insert(FinacialRecord finacialRecord) {
		String sql = "INSERT INTO finacialrecord(InOrOut, ConsumeType, Description, UnitPrice,"
				+ " Amount, Total, StaffID, Time, Remark) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		update(sql, finacialRecord.getInOrOut(), finacialRecord.getConsumeType(), finacialRecord.getDescription(), finacialRecord.getUnitPrice(), finacialRecord.getAmount(), finacialRecord.getTotal(), finacialRecord.getStaffID(), finacialRecord.getTime(), finacialRecord.getRemark());
	}

	@Override
	public void save(FinacialRecord finacialRecord) {
		String sql = "UPDATE finacialrecord SET InOrOut=?, ConsumeType=?, Description=?, UnitPrice=?," 
								+ " Amount=?, Total=?, StaffID=?, Time=?, Remark=? WHERE SID =?";
		update(sql, finacialRecord.getInOrOut(), finacialRecord.getConsumeType(), finacialRecord.getDescription(), finacialRecord.getUnitPrice(), finacialRecord.getAmount(), finacialRecord.getTotal(), finacialRecord.getStaffID(), finacialRecord.getTime(), finacialRecord.getRemark(), finacialRecord.getSID());
	}

	@Override
	public FinacialRecord get(String SID) {
		String sql = "SELECT SID, InOrOut, ConsumeType, Description, UnitPrice, Amount, Total, StaffID, Time, Remark FROM finacialrecord WHERE SID = ?";
		return get(sql, SID);
	}

	@Override
	public void delete(String SID) {
		String sql = "DELETE FROM finacialrecord WHERE SID = ?";
		update(sql, SID);
	}

	@Override
	public long getCountWithSID(String SID) {
		String sql = "SELECT count(SID) FROM finacialrecord WHERE SID = ?";
		return getForValue(sql, SID);
	}

}
