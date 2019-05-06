package com.skyoung.mvcapp.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import net.sf.json.JSONArray;

public class MemberServletTest {

	@Test
	public void listToJson() {
		List<Object> jsonList = new ArrayList<Object>();
		jsonList.add("why");
		jsonList.add("test");
		JSONArray jsonArray = JSONArray.fromObject(jsonList);
		System.out.println(jsonArray);
		
	}
}
