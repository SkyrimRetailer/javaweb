package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.Staff;

public interface StaffDAO {
	
	public List<Staff> getALL();
	
	public void insert(Staff staff);
	
	public void save(Staff staff);
	
	public Staff get(String StaffID);
	
	public void delete(String StaffID);
	
	/**
	 * 返回和 StaffID 相等的记录数
	 * @param StaffID
	 * @return
	 */
	public long getCountWithStaffID(String StaffID);
}
