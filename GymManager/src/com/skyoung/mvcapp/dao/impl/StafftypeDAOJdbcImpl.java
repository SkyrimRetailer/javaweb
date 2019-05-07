package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.StafftypeDAO;
import com.skyoung.mvcapp.domain.Stafftype;

public class StafftypeDAOJdbcImpl extends DAO<Stafftype> implements StafftypeDAO{

	@Override
	public List<Stafftype> getALL() {
		String sql = "SELECT TypeID, TypeName, BasicSalary FROM stafftype";
		return getForList(sql);
	}

	@Override
	public void insert(Stafftype stafftype) {
		String sql = "INSERT INTO stafftype(TypeID, TypeName, BasicSalary) VALUES(?, ?, ?)";
		update(sql, stafftype.getTypeID(), stafftype.getTypeName(), stafftype.getBasicSalary());
	}

	@Override
	public void save(Stafftype stafftype) {
		String sql = "UPDATE stafftype SET TypeName=?, BasicSalary=? WHERE TypeID=?";
		update(sql, stafftype.getTypeName(), stafftype.getBasicSalary(), stafftype.getTypeID());
	}

	@Override
	public Stafftype get(String TypeID) {
		String sql = "SELECT TypeID, TypeName, BasicSalary FROM stafftype WHERE TypeID = ?";
		return get(sql, TypeID);
	}

	@Override
	public void delete(String TypeID) {
		String sql = "DELETE FROM stafftype WHERE TypeID = ?";
		update(sql, TypeID);
	}

	@Override
	public long getCountWithTypeID(String TypeID) {
		String sql = "SELECT count(TypeID) FROM stafftype WHERE TypeID = ?";
		return getForValue(sql, TypeID);
	}
	
}
