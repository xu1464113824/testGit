package com.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public interface Dao {
	public default DataSource getDataSource() {
		DataSource dataSource=null;
		try {
			Context context=new InitialContext();
			dataSource= (DataSource) context.lookup("java:comp/env/jdbc/dogshopDS");
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return dataSource;
	}
}
