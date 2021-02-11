package com.oopsw.dt;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service	
public class PagingService {

	
	@Autowired
	private pagingDAO dao;

	public int count(){
		return dao.count();
	}
	
	
	
}
