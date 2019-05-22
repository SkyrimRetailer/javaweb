package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.User;

public interface UserDAO {
	
	public List<User> getALL();
	
	public void insert(User user);
	
	public User get(String username);
	
	/**
	 * 返回和 CardID 相等的记录数
	 * @param CardID
	 * @return
	 */
	public long getCountWithUsername(String username);
	
}
