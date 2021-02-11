package com.oopsw.dt;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service	
public class MemberService {

	
	@Autowired
	private MemberDAO memberDAO;

	public String selectDate(){
		return memberDAO.selectDate();
	}
	public String login(String id, String pw) {
		return memberDAO.login(id, pw);
	}
	public Collection<SubjectDTO> subjectList() {
		// TODO Auto-generated method stub
		return memberDAO.getAllSchedule();
	}
	
	
}
