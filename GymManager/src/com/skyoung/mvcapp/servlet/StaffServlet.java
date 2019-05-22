package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import com.skyoung.mvcapp.dao.impl.StaffDAOJdbcImpl;
import com.skyoung.mvcapp.domain.Staff;
import com.skyoung.mvcapp.query.StaffInitResult;

import net.sf.json.JSONArray;

//@WebServlet("/StaffServlet")



public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StaffServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/delete.staff
		String methodName = servletPath.substring(1, servletPath.length() - 6);	//	delete
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
	
	private void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {
		StaffDAOJdbcImpl staffDAOJdbcImpl = new StaffDAOJdbcImpl();
		List<StaffInitResult> list = staffDAOJdbcImpl.getALLInit();
		System.out.println(list);
		JSONArray json = JSONArray.fromObject(list);
		response.getWriter().println(json);
		response.getWriter().close();
		return;
	}	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StaffDAOJdbcImpl staffDAOJdbcImpl = new StaffDAOJdbcImpl();
		String message = request.getParameter("string");
		JSONArray ID = JSONArray.fromObject(message);
		for(int i=0;i<ID.size();i++) { 
			staffDAOJdbcImpl.delete((String)ID.get(i));
		}
		response.getWriter().println(1);
		response.getWriter().close();
		System.out.println(ID);
		return;
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StaffDAOJdbcImpl staffDAOJdbcImpl = new StaffDAOJdbcImpl();
		Staff staff = new Staff();
		staff.setStaffID(request.getParameter("StaffID"));
		staff.setName(request.getParameter("Name"));
		staff.setGender(request.getParameter("Gender"));
		staff.setStafftype(request.getParameter("Stafftype"));
		staff.setTel(request.getParameter("Tel"));
		staffDAOJdbcImpl.save(staff);
		response.getWriter().println(1);
		response.getWriter().close();
		return;
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StaffDAOJdbcImpl staffDAOJdbcImpl = new StaffDAOJdbcImpl();
		Staff staff = new Staff();
		staff.setStaffID(request.getParameter("StaffID"));
		staff.setName(request.getParameter("Name"));
		staff.setGender(request.getParameter("Gender"));
		staff.setStafftype(request.getParameter("Stafftype"));
		staff.setTel(request.getParameter("Tel"));
		System.out.println(staff);
		if(staffDAOJdbcImpl.getCountWithStaffID(staff.getStaffID()) != 0) {
			response.getWriter().println(0);	//ID已存在
			response.getWriter().close();
			return;
		}else {
			staffDAOJdbcImpl.insert(staff);
			System.out.println(staff);
			response.getWriter().println(1);	//添加成功
			response.getWriter().close();
		}
	}

}
