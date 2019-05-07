package com.skyoung.mvcapp.query;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;

public class StaffInitResultQuery extends DAO<StaffInitResult>{
	public List<StaffInitResult> getALLInit(){
		DAO<StaffInitResult> tempDAO = new DAO<StaffInitResult>();
		String sql = "SELECT StaffID, Name, Gender, TypeName, Tel, BasicSalary FROM staff inner join stafftype on StaffType = TypeID ";
		return getForList(sql);
	}
}
