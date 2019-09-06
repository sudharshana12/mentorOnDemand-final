package com.example.service;

import java.sql.SQLException;
import java.util.List;

public interface LoginService {

	public List<String> isValidUser(String email, String password) throws ClassNotFoundException, SQLException;
	public int obtainUserid(String email) throws ClassNotFoundException, SQLException;

}
