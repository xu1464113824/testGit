package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.catalina.webresources.war.Handler;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.model.Dog;

public class DogDaoImpl implements DogDao{

	@Override
	public List<Dog> getAllDogs() throws SQLException {
		QueryRunner runner=new QueryRunner(getDataSource());
		return runner.query("select * from dog", new BeanListHandler<Dog>(Dog.class));
	}

	@Override
	public List<Dog> getAllDogsByType(String type) throws SQLException {
		QueryRunner runner=new QueryRunner(getDataSource());
		return runner.query("select * from dog where type=?", new BeanListHandler<Dog>(Dog.class),type);
	}

	@Override
	public void delDogById(String id) throws SQLException {
		QueryRunner runner=new QueryRunner(getDataSource());
		 runner.update("delete from dog where id=?",id);
		
	}

	@Override
	public void delDogNumById(int id,int num) throws SQLException {
		QueryRunner runner=new QueryRunner(getDataSource());
		 runner.update("update dog set num=num-? where id=?",num,id);
		
	}

	@Override
	public Dog findDogById(String id) throws SQLException {
		QueryRunner runner=new QueryRunner(getDataSource());
		return runner.query("select * from dog where id=?", new BeanHandler<Dog>(Dog.class),id);
	}
	
}
