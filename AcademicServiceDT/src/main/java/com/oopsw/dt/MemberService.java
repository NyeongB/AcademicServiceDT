package com.oopsw.dt;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service	
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	
	
	
	
	public Collection<SubjectDTO> checkApplySubject() {
		return memberDAO.getCheckApplysubject();
	}
	
}
