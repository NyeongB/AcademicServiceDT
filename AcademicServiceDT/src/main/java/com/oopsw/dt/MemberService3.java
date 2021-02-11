package com.oopsw.dt;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service	
public class MemberService3 {
	
	@Autowired
	private MemberDAO3 memberDAO;

	
	public Collection<SubjectDTO> subjectList() {
		return memberDAO.getAllSchedule();
	}
	
}
