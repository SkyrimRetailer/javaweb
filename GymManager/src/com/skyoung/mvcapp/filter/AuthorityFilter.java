package com.skyoung.mvcapp.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.domain.UserAuthority;

public class AuthorityFilter extends HttpFilter{

	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		//1. 获取请求的 servletPath 和用户权限信息
		String servletPath = request.getServletPath();
		String username = (String) request.getSession().getAttribute("username");
		UserAuthority userAuthority = new UserAuthority();
		DAO<UserAuthority> dao = new DAO<>(UserAuthority.class);
		String sql = "SELECT * FROM user_authority WHERE Username=?";
		userAuthority = dao.get(sql, username);
		//职员信息权限
		if(servletPath.equals("/init.staff") && userAuthority.getStaffRead() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/add.staff") && userAuthority.getStaffAdd() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/update.staff") && userAuthority.getStaffEdit() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/delete.staff") && userAuthority.getStaffDelete() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		//职员类型权限
		if(servletPath.equals("/init.stafftype") && userAuthority.getStaffTypeRead() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/add.stafftype") && userAuthority.getStaffTypeAdd() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/update.stafftype") && userAuthority.getStaffTypeEdit() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/delete.stafftype") && userAuthority.getStaffTypeDelete() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		//会员信息权限
		if(servletPath.equals("/init.member") && userAuthority.getMemberRead() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/add.member") && userAuthority.getMemberAdd() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/update.member") && userAuthority.getMemberEdit() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/delete.member") && userAuthority.getMemberDelete() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		//健身记录权限
		if(servletPath.equals("/init.workoutrecord") && userAuthority.getWorkoutRecordRead() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/add.workoutrecord") && userAuthority.getWorkoutRecordAdd() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/delete.workoutrecord") && userAuthority.getWorkoutRecordDelete() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		//财务信息权限
		if(servletPath.equals("/init.finacialrecord") && userAuthority.getFinacialRecordRead() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/add.finacialrecord") && userAuthority.getFinacialRecordAdd() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/update.finacialrecord") && userAuthority.getFinacialRecordEdit() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		if(servletPath.equals("/delete.finacialrecord") && userAuthority.getFinacialRecordDelete() != 1) {
			response.getWriter().print("no-permission");
			response.getWriter().close();
			return;
		}
		//权限管理权限
		if(servletPath.equals("/authority.jsp") && userAuthority.getAuthorityManage() != 1) {
			response.getWriter().print("<script> alert(\"抱歉，您没有权限！\"); window.history.back(-1);</script>");
			response.getWriter().close();
			response.sendRedirect(request.getContextPath() + "/home.jsp");
			return;
		}
		
		
		filterChain.doFilter(request, response);
	}

}
