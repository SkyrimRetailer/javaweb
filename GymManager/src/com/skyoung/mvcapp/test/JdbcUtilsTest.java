package com.skyoung.mvcapp.test;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import com.skyoung.mvcapp.db.JdbcUtils;


public class JdbcUtilsTest {

	@Test
	public void testGetConnection() throws SQLException {
		Connection connection = JdbcUtils.getConnection();
		System.out.println(connection);
	}

}
