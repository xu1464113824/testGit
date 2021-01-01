package com.dao;

import java.sql.SQLException;
import java.util.List;

import com.model.Dog;

public interface DogDao extends Dao {
	
	public List<Dog> getAllDogs() throws SQLException;
	
	public List<Dog> getAllDogsByType(String type) throws SQLException;
	
	public void delDogById(String id) throws SQLException;
	
	public void delDogNumById(int id,int num) throws SQLException; 
	
	public Dog findDogById(String id) throws SQLException;
}
