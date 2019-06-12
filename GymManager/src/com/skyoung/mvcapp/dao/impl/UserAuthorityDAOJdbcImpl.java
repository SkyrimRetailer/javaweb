package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.UserAuthorityDAO;
import com.skyoung.mvcapp.domain.UserAuthority;

public class UserAuthorityDAOJdbcImpl extends DAO<UserAuthority> implements UserAuthorityDAO{

	@Override
	public List<UserAuthority> getALL() {
		String sql = "SELECT * FROM user_authority";
		return getForList(sql);
	}

	@Override
	public UserAuthority get(String username) {
		String sql = "SELECT * FROM user_authority WHERE Username=?";
		return get(sql, username);
	}

	@Override
	public void insert(UserAuthority userAuthority) {
		String sql = "INSERT INTO user_authority VALUES(?, ?, ?,?,?,?, ?,?,?,?, ?,?,?,?, ?,?,?, ?,?,?,?)";
		update(sql, userAuthority.getUsername(), userAuthority.getAuthorityManage(), userAuthority.getStaffRead(), userAuthority.getStaffAdd(), userAuthority.getStaffEdit(), userAuthority.getStaffDelete(), userAuthority.getStaffTypeRead(), userAuthority.getStaffTypeAdd(), userAuthority.getStaffTypeEdit(), userAuthority.getStaffTypeDelete(), userAuthority.getMemberRead(), userAuthority.getMemberAdd(), userAuthority.getMemberEdit(), userAuthority.getMemberDelete(), userAuthority.getWorkoutRecordRead(), userAuthority.getWorkoutRecordAdd(), userAuthority.getWorkoutRecordDelete(), userAuthority.getFinacialRecordRead(), userAuthority.getFinacialRecordAdd(), userAuthority.getFinacialRecordEdit(), userAuthority.getFinacialRecordDelete());
	}

	@Override
	public void save(UserAuthority userAuthority) {
		String sql = "UPDATE user_authority SET AuthorityManage=?, "
				+ "StaffRead=?, StaffAdd=?, StaffEdit=?, StaffDelete=?, "
				+ "StaffTypeRead=?, StaffTypeAdd=?, StaffTypeEdit=?, StaffTypeDelete=?, "
				+ "MemberRead=?, MemberAdd=?, MemberEdit=?, MemberDelete=?, "
				+ "WorkoutRecordRead=?, WorkoutRecordAdd=?, WorkoutRecordDelete=?, "
				+ "FinacialRecordRead=?, FinacialRecordAdd=?, FinacialRecordEdit=?, FinacialRecordDelete=? "
				+ "WHERE Username=?";
		update(sql, userAuthority.getAuthorityManage(), userAuthority.getStaffRead(), userAuthority.getStaffAdd(), userAuthority.getStaffEdit(), userAuthority.getStaffDelete(), userAuthority.getStaffTypeRead(), userAuthority.getStaffTypeAdd(), userAuthority.getStaffTypeEdit(), userAuthority.getStaffTypeDelete(), userAuthority.getMemberRead(), userAuthority.getMemberAdd(), userAuthority.getMemberEdit(), userAuthority.getMemberDelete(), userAuthority.getWorkoutRecordRead(), userAuthority.getWorkoutRecordAdd(), userAuthority.getWorkoutRecordDelete(), userAuthority.getFinacialRecordRead(), userAuthority.getFinacialRecordAdd(), userAuthority.getFinacialRecordEdit(), userAuthority.getFinacialRecordDelete(), userAuthority.getUsername());
	}

}
