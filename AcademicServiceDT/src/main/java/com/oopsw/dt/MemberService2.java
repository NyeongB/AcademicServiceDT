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
	
	public String login2(String id, String pw) {
		return memberDAO.login2(id, pw);
	}

	public UserInfoDTO userInfo(String id) {
		
		return memberDAO.userInfo(id);
	}

	public int changeInfo(String id, String phone, String email, String address, String password) {
		System.out.println("22"+phone);
		return memberDAO.changeInfo(id, phone, email, address, password);
	}
	
	
	
}
