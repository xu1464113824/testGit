package com.dao;

import java.sql.SQLException;
import java.util.List;

import com.model.Estimate;

public interface EstimateDao extends Dao {

	public void addStatement(String user,String content) throws SQLException;
	
	public List<Estimate> getAllStatement()throws SQLException;

}
