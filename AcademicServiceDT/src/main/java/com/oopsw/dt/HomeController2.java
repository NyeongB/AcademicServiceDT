package com.oopsw.dt;

import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController2 {
@Autowired
private MemberService2 memberService;

	String studentName;
	String studentId;
	private static final Logger logger = LoggerFactory.getLogger(HomeController1.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/loginAction", method = RequestMethod.GET)
	public String loginAction(HttpServletRequest request,Model model){
		studentName = memberService.login(request.getParameter("id"), request.getParameter("pw"));
		studentId = memberService.login2(request.getParameter("id"), request.getParameter("pw"));
		if(studentName !=null){			
			HttpSession session = request.getSession(true);
			HttpSession session2 = request.getSession(true);
		
			session.setAttribute("studentName", studentName);
			session2.setAttribute("studentId", studentId);
			System.out.println(session.getAttribute("studentName"));
			System.out.println(session.getAttribute("studentId"));

			return userInfo(request, model);
		}
		return "01_login";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request,Model model){
		studentName = null;
		System.out.println(studentName);
		return "01_login";
	}
	
	@RequestMapping(value = "/userInfo", method = RequestMethod.GET)
	public String userInfo(HttpServletRequest request, Model model) {
		
		UserInfoDTO userInfoDTO = memberService.userInfo(studentId);
		request.setAttribute("userInfoDTO", userInfoDTO);
		System.out.println(userInfoDTO);
		return "02_user_info";
	}
	
	@RequestMapping(value = "/changeInfo", method = RequestMethod.GET)
	public String changeInfo(HttpServletRequest request, Model model) {
		
		//UserInfoDTO userInfoDTO = memberService.userInfo(studentId);
		//request.setAttribute("userInfoDTO", userInfoDTO);
		//System.out.println(userInfoDTO);
		UserInfoDTO userInfoDTO = memberService.userInfo(studentId);
		request.setAttribute("userInfoDTO", userInfoDTO);
		return "02_user_info";
	}
}
