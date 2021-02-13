package com.oopsw.dt;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.oopsw.util.*;
@Repository
public interface MemberDAO3 {
	
	
	public Collection<SubjectDTO> getAllSchedule(IndexDTO dto);

	public int getCount();

	public String idPhoneCheck(@Param("name")String name, @Param("phone")String phone);

	public String findId(String name, String phone);

	public String pwPhoneCheck(@Param("studentId")String studentId, @Param("phone")String phone);

}
