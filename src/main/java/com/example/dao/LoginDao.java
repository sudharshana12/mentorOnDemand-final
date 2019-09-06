package com.example.dao;

import java.sql.SQLException;
import java.util.List;

public interface LoginDao {
	List<String> isValidUser(String email, String password) throws ClassNotFoundException, SQLException;
	public int obtainUserid(String email) throws ClassNotFoundException, SQLException;
}
