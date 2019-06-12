package com.skyoung.mvcapp.dao;

import java.util.List;

import com.skyoung.mvcapp.domain.RoleAuthority;

public interface RoleAuthorityDAO {
	
	public List<RoleAuthority> getALL();
	
	public RoleAuthority get(String rolename);
	
	public void insert(RoleAuthority roleAuthority);
	
	public void save(RoleAuthority roleAuthority);
}
