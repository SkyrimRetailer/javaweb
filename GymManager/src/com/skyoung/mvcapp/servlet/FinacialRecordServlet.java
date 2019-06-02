package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skyoung.mvcapp.dao.impl.FinacialRecordDAOJdbcImpl;
import com.skyoung.mvcapp.dao.impl.MemberDAOJdbcImpl;
import com.skyoung.mvcapp.dao.impl.WorkoutRecordDAOJdbcImpl;
import com.skyoung.mvcapp.domain.FinacialRecord;
import com.skyoung.mvcapp.domain.Member;
import com.skyoung.mvcapp.domain.WorkoutRecord;
import com.skyoung.mvcapp.query.FinacialRecordInitResult;

import net.sf.json.JSONArray;

//@WebServlet("/FinacialrecordServlet")
public class FinacialRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FinacialRecordServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/delete.finacialrecord
		String methodName = servletPath.substring(1, servletPath.length() - 15);	//	delete
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		try {
			//利用反射获取 methodName对应的方法
			Method method  = getClass().getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			//利用反射调用对应的方法
			method.invoke(this, request, response);
		} catch (Exception e) {
			response.sendRedirect("error.jsp");
		}
	}
	
	private void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FinacialRecordDAOJdbcImpl finacialRecordDAOJdbcImpl = new FinacialRecordDAOJdbcImpl();
		List<FinacialRecordInitResult> list = finacialRecordDAOJdbcImpl.getALLInit();
		for(FinacialRecordInitResult m : list) {	//去除时间后面的 .0
			m.setTime(m.getTime().substring(0, 19));
		}
		JSONArray json = JSONArray.fromObject(list);
		System.out.println(list);
		response.getWriter().println(json);
		response.getWriter().close();
		return;
	}
	
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FinacialRecordDAOJdbcImpl finacialRecordDAOJdbcImpl = new FinacialRecordDAOJdbcImpl();
		FinacialRecord finacialRecord = new FinacialRecord();
		finacialRecord.setInOrOut(request.getParameter("InOrOut"));
		if(request.getParameter("InOrOut").equals("收入")) {
			finacialRecord.setConsumeType(request.getParameter("InConsumeType"));
		}else if(request.getParameter("InOrOut").equals("支出")){
			finacialRecord.setConsumeType(request.getParameter("OutConsumeType"));
		}
		finacialRecord.setDescription(request.getParameter("Description"));
		finacialRecord.setUnitPrice(Integer.valueOf(request.getParameter("UnitPrice")));
		finacialRecord.setAmount(Integer.valueOf(request.getParameter("Amount")));
		finacialRecord.setTotal(Integer.valueOf(request.getParameter("Total")));
		finacialRecord.setStaffID(request.getParameter("StaffID"));
		finacialRecord.setTime(request.getParameter("Time"));
		finacialRecord.setRemark(request.getParameter("Remark"));
		System.out.println(finacialRecord);
		finacialRecordDAOJdbcImpl.insert(finacialRecord);
		System.out.println(finacialRecord);
		response.getWriter().println(1);
		response.getWriter().close();
		return;
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FinacialRecordDAOJdbcImpl finacialRecordDAOJdbcImpl = new FinacialRecordDAOJdbcImpl();
		String message = request.getParameter("string");
		JSONArray ID = JSONArray.fromObject(message);
		for(int i=0;i<ID.size();i++) {
			finacialRecordDAOJdbcImpl.delete((String)ID.get(i));
		}
		response.getWriter().println(1);
		response.getWriter().close();
		System.out.println(ID);
		return;
	}
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FinacialRecordDAOJdbcImpl finacialRecordDAOJdbcImpl = new FinacialRecordDAOJdbcImpl();
		FinacialRecord finacialRecord = finacialRecordDAOJdbcImpl.get(request.getParameter("SID"));
		finacialRecord.setInOrOut(request.getParameter("InOrOut"));
		if(request.getParameter("InOrOut").equals("收入")) {
			finacialRecord.setConsumeType(request.getParameter("InConsumeType"));
		}else if(request.getParameter("InOrOut").equals("支出")){
			finacialRecord.setConsumeType(request.getParameter("OutConsumeType"));
		}
		finacialRecord.setDescription(request.getParameter("Description"));
		finacialRecord.setUnitPrice(Integer.valueOf(request.getParameter("UnitPrice")));
		finacialRecord.setAmount(Integer.valueOf(request.getParameter("Amount")));
		finacialRecord.setTotal(Integer.valueOf(request.getParameter("Total")));
		finacialRecord.setTime(request.getParameter("Time"));
		finacialRecord.setRemark(request.getParameter("Remark"));
		finacialRecordDAOJdbcImpl.save(finacialRecord);
		response.getWriter().println(1);
		response.getWriter().close();
		return;
	}
}
