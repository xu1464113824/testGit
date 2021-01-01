package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.model.Estimate;

public class EstimateDaoImpl implements EstimateDao {

	@Override
	public void addStatement(String user,String content) throws SQLException {
		QueryRunner runner= new QueryRunner(getDataSource());
		runner.update("insert into estimate values(?,?)",user,content);
	}

	@Override
	public List<Estimate> getAllStatement() throws SQLException {
		QueryRunner runner=new QueryRunner(getDataSource());
		return runner.query("select * from estimate", new BeanListHandler<Estimate>(Estimate.class));
	}
	
	

}
