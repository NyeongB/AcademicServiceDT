package com.oopsw.dt;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO2 {
	public String login(@Param("studentId")String id, @Param("password")String pw);
	
	

}
