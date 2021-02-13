package com.oopsw.dt;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service	
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

//	public Collection<SubjectDTO> checkApplySubject() {
//		return memberDAO.getCheckApplysubject();
//	}
	
	public Collection<SubjectDTO> check(String id) {
		return memberDAO.check(id);
	}
	
	public Collection<ScoreDTO> score(String id, String year, String semester) {
		return memberDAO.score(id, year, semester);
	}
	
	public Collection<ScoreDTO> scoreAll(String id) {
		return memberDAO.scoreAll(id);
	}
}
