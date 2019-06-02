package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.FinacialRecord;
import com.skyoung.mvcapp.domain.Member;
import com.skyoung.mvcapp.query.FinacialRecordInitResult;

public interface FinacialRecordDAO {

	public List<FinacialRecord> getALL();
	
	public List<FinacialRecordInitResult> getALLInit();
	
	public void insert(FinacialRecord finacialRecord);
	
	public void save(FinacialRecord finacialRecord);
	
	public FinacialRecord get(String SID);
	
	public void delete(String SID);
	
	/**
	 * 返回和 CardID 相等的记录数
	 * @param CardID
	 * @return
	 */
	public long getCountWithSID(String SID);
	
}
