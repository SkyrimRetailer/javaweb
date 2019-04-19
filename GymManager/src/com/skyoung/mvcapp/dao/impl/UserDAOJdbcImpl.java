package com.skyoung.mvcapp.dao.impl;

import java.util.List;

import com.skyoung.mvcapp.dao.DAO;
import com.skyoung.mvcapp.dao.UserDAO;
import com.skyoung.mvcapp.domain.User;

public class UserDAOJdbcImpl extends DAO<User> implements UserDAO{

	@Override
	public List<User> getALL() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(User user) {
		String sql = "INSERT INTO userinfo(username, password) VALUES(?, ?)";
		update(sql, user.getUsername(), user.getPassword());
	}

	@Override
	public User get(String username) {
		String sql = "SELECT username, password FROM userinfo WHERE username = ?";
		return get(sql, username);
	}

	@Override
	public long getCountWithUsername(String username) {
		String sql = "SELECT count(username) FROM userinfo WHERE username = ?";
		return getForValue(sql, username);
	}

}
