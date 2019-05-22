package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.StaffDAO;
import com.skyoung.mvcapp.domain.Staff;
import com.skyoung.mvcapp.query.StaffInitResult;



public class StaffDAOJdbcImpl extends DAO<Staff> implements StaffDAO{
	
	@Override
	public List<Staff> getALL() {
		String sql = "SELECT StaffID, Name, Gender, Stafftype, Tel FROM staff";
		//String sql = "SELECT StaffID, Name, Gender, TypeName, Tel, BasicSalary FROM staff inner join stafftype on StaffType = TypeID ";
		return getForList(sql);
	}
	
	@Override
	public List<StaffInitResult> getALLInit() {
		DAO<StaffInitResult> dao = new DAO<StaffInitResult>(StaffInitResult.class);
		String sql = "SELECT StaffID, Name, Gender, TypeName, Tel, BasicSalary FROM staff inner join stafftype on StaffType = TypeID ";
		return dao.getForList(sql);
	}


	@Override
	public void insert(Staff staff) {
		String sql = "INSERT INTO staff(StaffID, Name, Gender, Stafftype, Tel) VALUES(?, ?, ?, ?, ?)";
		update(sql, staff.getStaffID(), staff.getName(), staff.getGender(), staff.getStafftype(), staff.getTel());
	}

	@Override
	public void save(Staff staff) {
		String sql = "UPDATE staff SET Name=?, Gender=?, Stafftype=?, Tel=? WHERE StaffID=?";
		update(sql, staff.getName(), staff.getGender(), staff.getStafftype(), staff.getTel(), staff.getStaffID());
	}

	@Override
	public Staff get(String StaffID) {
		String sql = "SELECT StaffID, Name, Gender, Stafftype, Tel FROM staff WHERE StaffID = ?";
		return get(sql, StaffID);
	}

	@Override
	public void delete(String StaffID) {
		String sql = "DELETE FROM staff WHERE StaffID = ?";
		update(sql, StaffID);
	}

	@Override
	public long getCountWithStaffID(String StaffID) {
		String sql = "SELECT count(StaffID) FROM staff WHERE StaffID = ?";
		return getForValue(sql, StaffID);
	}

}
