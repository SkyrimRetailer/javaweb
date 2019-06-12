package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.UserAuthority;

public interface UserAuthorityDAO {
	
	public List<UserAuthority> getALL();
	
	public UserAuthority get(String username);
	
	public void insert(UserAuthority userAuthority);
	
	public void save(UserAuthority userAuthority);
}
