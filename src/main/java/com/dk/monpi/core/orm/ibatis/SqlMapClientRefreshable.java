package com.dk.monpi.core.orm.ibatis;


public interface SqlMapClientRefreshable {

	void refresh() throws Exception;
	

	void setCheckInterval(int ms);
	
}
