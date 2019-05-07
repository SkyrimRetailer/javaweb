package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skyoung.mvcapp.dao.impl.MemberDAOJdbcImpl;
import com.skyoung.mvcapp.dao.impl.StafftypeDAOJdbcImpl;
import com.skyoung.mvcapp.domain.Member;
import com.skyoung.mvcapp.domain.Stafftype;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class StafftypeServlet
 */
//@WebServlet("/StafftypeServlet")
public class StafftypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public StafftypeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/delete.stafftype
		String methodName = servletPath.substring(1, servletPath.length() - 10);	//	delete
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
		StafftypeDAOJdbcImpl staffTypeDAOJdbcImpl = new StafftypeDAOJdbcImpl();
		List<Stafftype> list = staffTypeDAOJdbcImpl.getALL();
		JSONArray json = JSONArray.fromObject(list);
		System.out.println(list);
		response.getWriter().println(json);
		response.getWriter().close();
		return;
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StafftypeDAOJdbcImpl staffTypeDAOJdbcImpl = new StafftypeDAOJdbcImpl();
		String message = request.getParameter("string");
		JSONArray ID = JSONArray.fromObject(message);
		for(int i=0;i<ID.size();i++) { 
			staffTypeDAOJdbcImpl.delete((String)ID.get(i));
		}
		response.getWriter().println(1);
		response.getWriter().close();
		System.out.println(ID);
		return;
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StafftypeDAOJdbcImpl staffTypeDAOJdbcImpl = new StafftypeDAOJdbcImpl();
		Stafftype stafftype = new Stafftype();
		stafftype.setTypeID(request.getParameter("TypeID"));
		stafftype.setTypeName(request.getParameter("TypeName"));
		stafftype.setBasicSalary(Integer.valueOf(request.getParameter("BasicSalary")));
		staffTypeDAOJdbcImpl.save(stafftype);
		response.getWriter().println(1);
		response.getWriter().close();
		return;
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StafftypeDAOJdbcImpl staffTypeDAOJdbcImpl = new StafftypeDAOJdbcImpl();
		Stafftype stafftype = new Stafftype();
		stafftype.setTypeID(request.getParameter("TypeID"));
		stafftype.setTypeName(request.getParameter("TypeName"));
		stafftype.setBasicSalary(Integer.valueOf(request.getParameter("BasicSalary")));
		System.out.println(stafftype);
		if(staffTypeDAOJdbcImpl.getCountWithTypeID(stafftype.getTypeID()) != 0) {
			response.getWriter().println(0);	//ID已存在
			response.getWriter().close();
			return;
		}else {
			staffTypeDAOJdbcImpl.insert(stafftype);
			System.out.println(stafftype);
			response.getWriter().println(1);	//添加成功
			response.getWriter().close();
		}
	}
}
