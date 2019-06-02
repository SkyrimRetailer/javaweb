package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.domain.User;
import com.sun.xml.internal.fastinfoset.algorithm.IEEE754FloatingPointEncodingAlgorithm;

import net.sf.json.JSONObject;

//@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/delete.home
		String methodName = servletPath.substring(1, servletPath.length() - 5);	//	delete
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
		JSONObject json = new JSONObject();
		DAO<User> dao = new DAO<User>(); 
		String weekstart = request.getParameter("WeekStart") + " 00:00:00";
		String weekend = request.getParameter("WeekEnd") + " 23:59:59";	//注意算满一周
		String monthstart = request.getParameter("MonthStart");
		String lastweekstart = request.getParameter("LastWeekStart");
		System.out.println(weekstart);
		System.out.println(weekend);
		System.out.println(monthstart);
		System.out.println(lastweekstart);
		//周打卡数量统计
		String sql = "SELECT COUNT(CheckinTime) FROM workoutrecord WHERE CheckinTime BETWEEN ? AND ?";
		long weekworkout = dao.getForValue(sql, weekstart, weekend);
		json.put("weekworkout", weekworkout);
		System.out.println("weekworkout: " + weekworkout);
		//周出售数量统计
		sql = "SELECT COUNT(SID) FROM finacialrecord WHERE Time BETWEEN ? AND ? AND InOrOut = '收入'";
		long weeksale = dao.getForValue(sql, weekstart, weekend);
		json.put("weeksale", weeksale);
		System.out.println("weeksale: " + weeksale);
		//总打卡数量统计
		sql = "SELECT COUNT(CheckinTime) FROM workoutrecord";
		long totalworkout = dao.getForValue(sql);
		json.put("totalworkout", totalworkout);
		System.out.println("totalworkout: " + totalworkout);
		//总出售数量统计
		sql = "SELECT COUNT(SID) FROM finacialrecord WHERE InOrOut = '收入'";
		long totalsale = dao.getForValue(sql);
		json.put("totalsale", totalsale);
		System.out.println("totalsale: " + totalsale);
		//月营业额统计
		sql = "SELECT SUM(Total) FROM finacialrecord WHERE InOrOut = '收入' AND Time >= ?";
		BigDecimal bigDecimal = dao.getForValue(sql, monthstart);
		long monthlyincome = bigDecimal.intValue();
		json.put("monthlyincome", monthlyincome);
		System.out.println("monthlyincome: " + monthlyincome );
		//总营业额统计
		sql = "SELECT SUM(Total) FROM finacialrecord WHERE InOrOut = '收入'";
		bigDecimal = dao.getForValue(sql);
		long totalincome = bigDecimal.intValue();
		json.put("totalincome", totalincome);
		System.out.println("totalincome: " + totalincome);
		//统计每日健身情况
		weekstart = request.getParameter("WeekStart");
		sql = "SELECT COUNT(CheckinTime) FROM workoutrecord WHERE CheckinTime BETWEEN ? AND ?";
		Date startdate = Date.valueOf(weekstart);
		System.out.println(startdate);
		Date laststartdate = Date.valueOf(lastweekstart);
		System.out.println(laststartdate);
		Calendar calendar = new GregorianCalendar();
		long[][] arr = new long[2][7];
		
		for(int i=0;i<7;i++) {
			calendar.setTime(startdate);
			calendar.add(calendar.DATE, i);
			Date temp = new Date(calendar.getTime().getTime());
			arr[0][i] = dao.getForValue(sql, temp.toString() + " 00:00:00", temp.toString() + " 23:59:59");
		}
		
		for(int i=0;i<7;i++) {
			calendar.setTime(laststartdate);
			calendar.add(calendar.DATE, i);
			Date temp = new Date(calendar.getTime().getTime());
			arr[1][i] = dao.getForValue(sql, temp.toString() + " 00:00:00", temp.toString() + " 23:59:59");
		}
		json.put("workoutrecord", arr);
		response.getWriter().println(json);
		response.getWriter().close();
	}
	
	
	
	
	

}
