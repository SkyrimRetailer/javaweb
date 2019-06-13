package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.RoleAuthorityDAO;
import com.skyoung.mvcapp.domain.RoleAuthority;

public class RoleAuthorityDAOJdbcImpl extends DAO<RoleAuthority> implements RoleAuthorityDAO {

	@Override
	public List<RoleAuthority> getALL() {
		String sql = "SELECT * FROM role_authority";
		return getForList(sql);
	}

	@Override
	public RoleAuthority get(String rolename) {
		String sql = "SELECT * FROM role_authority WHERE Rolename=?";
		return get(sql, rolename);
	}

	@Override
	public void insert(RoleAuthority roleAuthority) {
		String sql = "INSERT INTO role_authority VALUES(?, ?, ?,?,?,?, ?,?,?,?, ?,?,?,?, ?,?,?, ?,?,?,?)";
		update(sql, roleAuthority.getRolename(), roleAuthority.getAuthorityManage(), roleAuthority.getStaffRead(), roleAuthority.getStaffAdd(), roleAuthority.getStaffEdit(), roleAuthority.getStaffDelete(), roleAuthority.getStaffTypeRead(), roleAuthority.getStaffTypeAdd(), roleAuthority.getStaffTypeEdit(), roleAuthority.getStaffTypeDelete(), roleAuthority.getMemberRead(), roleAuthority.getMemberAdd(), roleAuthority.getMemberEdit(), roleAuthority.getMemberDelete(), roleAuthority.getWorkoutRecordRead(), roleAuthority.getWorkoutRecordAdd(), roleAuthority.getWorkoutRecordDelete(), roleAuthority.getFinacialRecordRead(), roleAuthority.getFinacialRecordAdd(), roleAuthority.getFinacialRecordEdit(), roleAuthority.getFinacialRecordDelete());
	}

	@Override
	public void save(RoleAuthority roleAuthority) {
		String sql = "UPDATE role_authority SET AuthorityManage=?, "
				+ "StaffRead=?, StaffAdd=?, StaffEdit=?, StaffDelete=?, "
				+ "StaffTypeRead=?, StaffTypeAdd=?, StaffTypeEdit=?, StaffTypeDelete=?, "
				+ "MemberRead=?, MemberAdd=?, MemberEdit=?, MemberDelete=?, "
				+ "WorkoutRecordRead=?, WorkoutRecordAdd=?, WorkoutRecordDelete=?, "
				+ "FinacialRecordRead=?, FinacialRecordAdd=?, FinacialRecordEdit=?, FinacialRecordDelete=? "
				+ "WHERE Rolename=?";
		update(sql, roleAuthority.getAuthorityManage(), roleAuthority.getStaffRead(), roleAuthority.getStaffAdd(), roleAuthority.getStaffEdit(), roleAuthority.getStaffDelete(), roleAuthority.getStaffTypeRead(), roleAuthority.getStaffTypeAdd(), roleAuthority.getStaffTypeEdit(), roleAuthority.getStaffTypeDelete(), roleAuthority.getMemberRead(), roleAuthority.getMemberAdd(), roleAuthority.getMemberEdit(), roleAuthority.getMemberDelete(), roleAuthority.getWorkoutRecordRead(), roleAuthority.getWorkoutRecordAdd(), roleAuthority.getWorkoutRecordDelete(), roleAuthority.getFinacialRecordRead(), roleAuthority.getFinacialRecordAdd(), roleAuthority.getFinacialRecordEdit(), roleAuthority.getFinacialRecordDelete(), roleAuthority.getRolename());
	}

	@Override
	public long getCountWithRolename(String rolename) {
		String sql = "SELECT count(Rolename) FROM role_authority WHERE Rolename = ?";
		return getForValue(sql, rolename);
	}

	@Override
	public void delete(String rolename) {
		String sql = "DELETE FROM role_authority WHERE Rolename = ?";
		update(sql, rolename);
	}

}
