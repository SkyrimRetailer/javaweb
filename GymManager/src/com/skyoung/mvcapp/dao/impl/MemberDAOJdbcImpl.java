package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.MemberDAO;
import com.skyoung.mvcapp.domain.Member;

public class MemberDAOJdbcImpl extends DAO<Member> implements MemberDAO{

	@Override
	public List<Member> getALL() {
		String sql = "SELECT CardID, Name, Gender, Credit, Tel, StartDate, OverdueDate FROM membercard";
		return getForList(sql);
	}

	@Override
	public void insert(Member member) {
		String sql = "INSERT INTO membercard(CardID, Name, Gender, Credit, Tel, StartDate, OverdueDate) VALUES(?, ?, ?, ?, ?, ?, ?)";
		update(sql, member.getCardID(), member.getName(), member.getGender(), member.getCredit(), member.getTel(), member.getStartDate(), member.getOverdueDate());
	}

	@Override
	public Member get(String CardID) {
		String sql = "SELECT CardID, Name, Gender, Credit, Tel, StartDate, OverdueDate FROM membercard WHERE CardID = ?";
		return get(sql, CardID);
	}

	@Override
	public void delete(String CardID) {
		String sql = "DELETE FROM membercard WHERE CardID = ?";
		update(sql, CardID);
	}

	@Override
	public long getCountWithCardID(String CardID) {
		String sql = "SELECT count(CardID) FROM membercard WHERE CardID = ?";
		return getForValue(sql, CardID);
	}

	@Override
	public void save(Member member) {
		String sql = "UPDATE membercard SET Name=?, Gender=?, Credit=?, Tel=?, StartDate=?, OverdueDate=? WHERE CardID=?";
		update(sql, member.getName(), member.getGender(), member.getCredit(), member.getTel(), member.getStartDate(), member.getOverdueDate(), member.getCardID());
	}

}
