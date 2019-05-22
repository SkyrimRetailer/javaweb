package com.skyoung.mvcapp.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateUtils;

import com.skyoung.mvcapp.dao.impl.MemberDAOJdbcImpl;
import com.skyoung.mvcapp.dao.impl.WorkoutRecordDAOJdbcImpl;
import com.skyoung.mvcapp.domain.Member;
import com.skyoung.mvcapp.domain.WorkoutRecord;
import com.skyoung.mvcapp.query.WorkoutRecordInitResult;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class WorkoutRecordServlet
 */
//@WebServlet("/WorkoutRecordServlet")
public class WorkoutRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public WorkoutRecordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath  = request.getServletPath();					//	/add.workoutrecord
		String methodName = servletPath.substring(1, servletPath.length() - 14);		//	add
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
		WorkoutRecordDAOJdbcImpl workoutRecordDAOJdbcImpl = new WorkoutRecordDAOJdbcImpl();
		List<WorkoutRecordInitResult> list = workoutRecordDAOJdbcImpl.getALLInit();
		//System.out.println(list);
		for(WorkoutRecordInitResult m : list) {	//去除时间后面的 .0
			m.setCheckinTime(m.getCheckinTime().substring(0, 19));
		}
		JSONArray json = JSONArray.fromObject(list);
		System.out.println(list);
		response.getWriter().println(json);
		response.getWriter().close();
		return;
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WorkoutRecordDAOJdbcImpl workoutRecordDAOJdbcImpl = new WorkoutRecordDAOJdbcImpl();
		MemberDAOJdbcImpl memberDAOJdbcImpl = new MemberDAOJdbcImpl();
		System.out.println("testing1");
		WorkoutRecord workoutRecord = new WorkoutRecord();
		workoutRecord.setCardID(request.getParameter("CardID"));
		Timestamp checkinTime = new Timestamp(System.currentTimeMillis()); 
		workoutRecord.setCheckinTime(checkinTime.toString().substring(0, 19));
		Timestamp overduedate = Timestamp.valueOf(memberDAOJdbcImpl.get(workoutRecord.getCardID()).getOverdueDate());
		System.out.println("testing2");
		if(memberDAOJdbcImpl.getCountWithCardID(workoutRecord.getCardID()) == 0) {
			response.getWriter().println(0);	//ID不存在
			response.getWriter().close();
			System.out.println(0);
			return;
		}
		if(overduedate.before(checkinTime)) {
			response.getWriter().println(2);	//会员卡过期了
			response.getWriter().close();
			System.out.println(2);
			return;
		}
		List<WorkoutRecord> list = workoutRecordDAOJdbcImpl.getByCardID(workoutRecord.getCardID());
		if(list.isEmpty()) {
			workoutRecordDAOJdbcImpl.insert(workoutRecord);
			response.getWriter().println(1);	//打卡成功
			response.getWriter().close();
			System.out.println(1);
			return;
		}
		Timestamp lastcheckinTime = Timestamp.valueOf(list.get(0).getCheckinTime());
		Date date1 = new Date(checkinTime.getTime());
		Date date2 = new Date(lastcheckinTime.getTime());
		System.out.println("testing3");
		if(DateUtils.isSameDay(date1,date2)) {
			response.getWriter().println(3);	//今天已经打卡过了
			response.getWriter().close();
			System.out.println(3);
			return;
		}else {
			workoutRecordDAOJdbcImpl.insert(workoutRecord);
			response.getWriter().println(1);	//打卡成功
			response.getWriter().close();
			System.out.println(1);
			return;
		}
		
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
