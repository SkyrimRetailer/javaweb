package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.skyoung.mvcapp.dao.impl.MemberDAOJdbcImpl;
import com.skyoung.mvcapp.domain.Member;
import net.sf.json.JSONArray;
/**
 * Servlet implementation class MemberServlet
 */
//@WebServlet("*.member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public MemberServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String method = request.getParameter("method");
//		switch (method) {
//		case "add": 	add(request, response);		break;
//		case "query": 	query(request, response);	break;
//		case "delete": 	delete(request, response);	break;
//		default:
//			break;
//		}
//	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/delete.member
		String methodName = servletPath.substring(1, servletPath.length() - 7);		//	delete
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
		MemberDAOJdbcImpl memberDAOJdbcImpl = new MemberDAOJdbcImpl();
		List<Member> list = memberDAOJdbcImpl.getALL();
		for(Member m : list) {	//去除时间后面的 .0
			m.setStartDate(m.getStartDate().substring(0, 19));
			m.setOverdueDate(m.getOverdueDate().substring(0, 19));
		}
		JSONArray json = JSONArray.fromObject(list);
		System.out.println(list);
		response.getWriter().println(json);
		response.getWriter().close();
		return;
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAOJdbcImpl memberDAOJdbcImpl = new MemberDAOJdbcImpl();
		String message = request.getParameter("string");
		JSONArray ID = JSONArray.fromObject(message);
		for(int i=0;i<ID.size();i++) {
			memberDAOJdbcImpl.delete((String)ID.get(i));
		}
		response.getWriter().println(1);
		response.getWriter().close();
		System.out.println(ID);
		return;
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAOJdbcImpl memberDAOJdbcImpl = new MemberDAOJdbcImpl();
		Member member = new Member();
		member.setCardID(request.getParameter("CardID"));
		member.setName(request.getParameter("Name"));
		member.setGender(request.getParameter("Gender"));
		member.setCredit(Integer.valueOf(request.getParameter("Credit")));
		member.setTel(request.getParameter("Tel"));
		member.setStartDate(request.getParameter("StartDate"));
		member.setOverdueDate(request.getParameter("OverdueDate"));
		memberDAOJdbcImpl.save(member);
		response.getWriter().println(1);
		response.getWriter().close();
		return;
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAOJdbcImpl memberDAOJdbcImpl = new MemberDAOJdbcImpl();
		Member member = new Member();
		member.setCardID(request.getParameter("CardID"));
		member.setName(request.getParameter("Name"));
		member.setGender(request.getParameter("Gender"));
		member.setCredit(Integer.valueOf(request.getParameter("Credit")));
		member.setTel(request.getParameter("Tel"));
		member.setStartDate(request.getParameter("StartDate"));
		member.setOverdueDate(request.getParameter("OverdueDate"));
		if(memberDAOJdbcImpl.getCountWithCardID(member.getCardID()) != 0) {
			response.getWriter().println(0);	//ID已存在
			response.getWriter().close();
			return;
		}else {
			memberDAOJdbcImpl.insert(member);
			response.getWriter().println(1);	//添加成功
			response.getWriter().close();
		}
		
	}

}
