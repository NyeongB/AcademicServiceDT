package com.oopsw.dt;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface pagingDAO {
	public String selectDate();// throws Exception;	
	public String login(@Param("memberId")String id, @Param("pw")String pw);
//	public String login(String id, String pw) {
//		if(id.equals("admin") && pw.equals("123"))
//			return "������";
//		return null;
//	}
	public Collection<SubjectDTO> getAllSchedule();
	
	public int count();

}