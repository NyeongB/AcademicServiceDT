package com.oopsw.dt;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.util.*;
@Repository
public interface MemberDAO3 {
	
	//전체 과목
	public Collection<SubjectDTO> getAllSchedule(@Param("start")int start, @Param("end")int end, @Param("studentId")String id);
	// 전공
	public Collection<SubjectDTO> getAllSchedule2(@Param("start")int start, @Param("end")int end, @Param("studentId")String id);
	// 교양
	public Collection<SubjectDTO> getAllSchedule3(@Param("start")int start, @Param("end")int end, @Param("studentId")String id);
	
	public int getCount(@Param("studentId")String studentId);

	public String idPhoneCheck(@Param("name")String name, @Param("phone")String phone);

	public String findId(String name, String phone);

	public String pwPhoneCheck(@Param("studentId")String studentId, @Param("phone")String phone);

	public int getCount2(@Param("studentId")String studentId);
	public int getCount3(@Param("studentId")String studentId);

	public int insert(@Param("subjectCode")String subjectCode, @Param("studentId")String studentId);

}
