package com.oopsw.dt;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO2 {
	public String login(@Param("studentId")String id, @Param("password")String pw);
	public String login2(@Param("studentId")String id, @Param("password")String pw);
	public UserInfoDTO userInfo(@Param("studentId")String id);
	public int changeInfo(@Param("studentId")String id, @Param("phone")String phone, @Param("email")String email, @Param("address")String address, @Param("password")String password);
	
}
