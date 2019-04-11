package com.skyoung.mvcapp.test;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.util.List;

import org.junit.Test;

import com.mchange.v2.c3p0.ConnectionCustomizer;
import com.skyoung.mvcapp.dao.MemberDAO;
import com.skyoung.mvcapp.dao.impl.MemberDAOJdbcImpl;
import com.skyoung.mvcapp.domain.Member;

public class MemberDAOJdbcImplTest {

	
	private MemberDAO memberDAO = new MemberDAOJdbcImpl(); 
	
	@Test
	public void testGetALL() {
		List<Member> members = memberDAO.getALL();
		System.out.println(members);
	}

	@Test
	public void testSave() {
		Member member = new Member();
		member.setCardID("00000006");
		member.setName("猪猪侠");
		member.setGender("女");
		member.setCredit(442);
		member.setTel("12345678900");
		member.setStartDate("2019-01-01 01:00:00");
		member.setOverdueDate("2019-12-01 01:00:00");
		
		memberDAO.save(member);
	}

	@Test
	public void testGetString() {
		Member member = memberDAO.get("00000001");
		System.out.println(member);
	}

	@Test
	public void testDelete() {
		memberDAO.delete("00000006");
	}

	@Test
	public void testGetCountWithCardID() {
		long count = memberDAO.getCountWithCardID("00000009");
		System.out.println(count);
	}

}
