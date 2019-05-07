package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.Stafftype;

public interface StafftypeDAO {

	public List<Stafftype> getALL();
	
	public void insert(Stafftype stafftype);
	
	public void save(Stafftype stafftype);
	
	public Stafftype get(String TypeID);
	
	public void delete(String TypeID);
	
	/**
	 * 返回和 TypeID 相等的记录数
	 * @param TypeID
	 * @return
	 */
	public long getCountWithTypeID(String TypeID);
}
