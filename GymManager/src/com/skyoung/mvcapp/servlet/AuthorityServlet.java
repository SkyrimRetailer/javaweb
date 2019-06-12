package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.impl.RoleAuthorityDAOJdbcImpl;
import com.skyoung.mvcapp.dao.impl.UserAuthorityDAOJdbcImpl;
import com.skyoung.mvcapp.domain.RoleAuthority;
import com.skyoung.mvcapp.domain.UserAuthority;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

//@WebServlet("/AuthorityServlet")
public class AuthorityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AuthorityServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/init.authority
		String methodName = servletPath.substring(1, servletPath.length() - 10);	//	init
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
		UserAuthorityDAOJdbcImpl userAuthorityDAOJdbcImpl = new UserAuthorityDAOJdbcImpl();
		RoleAuthorityDAOJdbcImpl roleAuthorityDAOJdbcImpl = new RoleAuthorityDAOJdbcImpl();
		
		List<UserAuthority> users = userAuthorityDAOJdbcImpl.getALL();
		List<RoleAuthority> roles = roleAuthorityDAOJdbcImpl.getALL();
		JSONArray userjs = JSONArray.fromObject(users);
		JSONArray rolejs = JSONArray.fromObject(roles);
		System.out.println(users);
		System.out.println(userjs);
		System.out.println(roles);
		System.out.println(rolejs);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("users", userjs);
		jsonObject.put("roles", rolejs);
		System.out.println(jsonObject);
		response.getWriter().println(jsonObject);
		response.getWriter().close();
	}
	
	private void update_user(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserAuthority userAuthority = new UserAuthority();
		UserAuthorityDAOJdbcImpl userAuthorityDAOJdbcImpl = new UserAuthorityDAOJdbcImpl();
		userAuthority.setUsername(request.getParameter("Username"));
		userAuthority.setAuthorityManage(Integer.valueOf(request.getParameter("AuthorityManage")));
		userAuthority.setStaffRead(Integer.valueOf(request.getParameter("StaffRead")));
		userAuthority.setStaffAdd(Integer.valueOf(request.getParameter("StaffAdd")));
		userAuthority.setStaffEdit(Integer.valueOf(request.getParameter("StaffEdit")));
		userAuthority.setStaffDelete(Integer.valueOf(request.getParameter("StaffDelete")));
		userAuthority.setStaffTypeRead(Integer.valueOf(request.getParameter("StaffTypeRead")));
		userAuthority.setStaffTypeAdd(Integer.valueOf(request.getParameter("StaffTypeAdd")));
		userAuthority.setStaffTypeEdit(Integer.valueOf(request.getParameter("StaffTypeEdit")));
		userAuthority.setStaffTypeDelete(Integer.valueOf(request.getParameter("StaffTypeDelete")));
		userAuthority.setMemberRead(Integer.valueOf(request.getParameter("MemberRead")));
		userAuthority.setMemberAdd(Integer.valueOf(request.getParameter("MemberAdd")));
		userAuthority.setMemberEdit(Integer.valueOf(request.getParameter("MemberEdit")));
		userAuthority.setMemberDelete(Integer.valueOf(request.getParameter("MemberDelete")));
		userAuthority.setWorkoutRecordRead(Integer.valueOf(request.getParameter("WorkoutRecordRead")));
		userAuthority.setWorkoutRecordAdd(Integer.valueOf(request.getParameter("WorkoutRecordAdd")));
		userAuthority.setWorkoutRecordDelete(Integer.valueOf(request.getParameter("WorkoutRecordDelete")));
		userAuthority.setFinacialRecordRead(Integer.valueOf(request.getParameter("FinacialRecordRead")));
		userAuthority.setFinacialRecordAdd(Integer.valueOf(request.getParameter("FinacialRecordAdd")));
		userAuthority.setFinacialRecordEdit(Integer.valueOf(request.getParameter("FinacialRecordEdit")));
		userAuthority.setFinacialRecordDelete(Integer.valueOf(request.getParameter("FinacialRecordDelete")));
		userAuthorityDAOJdbcImpl.save(userAuthority);
		response.getWriter().println(1);
		response.getWriter().close();
		
	}
	private void update_role(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RoleAuthority roleAuthority = new RoleAuthority();
		RoleAuthorityDAOJdbcImpl roleAuthorityDAOJdbcImpl = new RoleAuthorityDAOJdbcImpl();
		roleAuthority.setRolename(request.getParameter("Rolename"));
		roleAuthority.setAuthorityManage(Integer.valueOf(request.getParameter("AuthorityManage")));
		roleAuthority.setStaffRead(Integer.valueOf(request.getParameter("StaffRead")));
		roleAuthority.setStaffAdd(Integer.valueOf(request.getParameter("StaffAdd")));
		roleAuthority.setStaffEdit(Integer.valueOf(request.getParameter("StaffEdit")));
		roleAuthority.setStaffDelete(Integer.valueOf(request.getParameter("StaffDelete")));
		roleAuthority.setStaffTypeRead(Integer.valueOf(request.getParameter("StaffTypeRead")));
		roleAuthority.setStaffTypeAdd(Integer.valueOf(request.getParameter("StaffTypeAdd")));
		roleAuthority.setStaffTypeEdit(Integer.valueOf(request.getParameter("StaffTypeEdit")));
		roleAuthority.setStaffTypeDelete(Integer.valueOf(request.getParameter("StaffTypeDelete")));
		roleAuthority.setMemberRead(Integer.valueOf(request.getParameter("MemberRead")));
		roleAuthority.setMemberAdd(Integer.valueOf(request.getParameter("MemberAdd")));
		roleAuthority.setMemberEdit(Integer.valueOf(request.getParameter("MemberEdit")));
		roleAuthority.setMemberDelete(Integer.valueOf(request.getParameter("MemberDelete")));
		roleAuthority.setWorkoutRecordRead(Integer.valueOf(request.getParameter("WorkoutRecordRead")));
		roleAuthority.setWorkoutRecordAdd(Integer.valueOf(request.getParameter("WorkoutRecordAdd")));
		roleAuthority.setWorkoutRecordDelete(Integer.valueOf(request.getParameter("WorkoutRecordDelete")));
		roleAuthority.setFinacialRecordRead(Integer.valueOf(request.getParameter("FinacialRecordRead")));
		roleAuthority.setFinacialRecordAdd(Integer.valueOf(request.getParameter("FinacialRecordAdd")));
		roleAuthority.setFinacialRecordEdit(Integer.valueOf(request.getParameter("FinacialRecordEdit")));
		roleAuthority.setFinacialRecordDelete(Integer.valueOf(request.getParameter("FinacialRecordDelete")));
		roleAuthorityDAOJdbcImpl.save(roleAuthority);
		response.getWriter().println(1);
		response.getWriter().close();
		
	}

}
