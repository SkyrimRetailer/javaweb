package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.Member;

public interface MemberDAO {
	
	public List<Member> getALL();
	
	public void insert(Member member);
	
	public void save(Member member);
	
	public Member get(String CardID);
	
	public void delete(String CardID);
	
	/**
	 * 返回和 CardID 相等的记录数
	 * @param CardID
	 * @return
	 */
	public long getCountWithCardID(String CardID);
	
}
