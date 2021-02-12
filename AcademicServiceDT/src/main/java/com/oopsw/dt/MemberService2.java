package com.oopsw.dt;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service	
public class MemberService2 {

	@Autowired
	private MemberDAO2 memberDAO;

	public String login(String id, String pw) {
		return memberDAO.login(id, pw);
	}
	
	
	
}
