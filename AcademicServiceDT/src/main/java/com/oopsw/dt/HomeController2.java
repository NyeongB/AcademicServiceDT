package com.oopsw.dt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
		
			session.setAttribute("studentName", studentName);
			session.setAttribute("studentId", studentId);

			return userInfo(request, model);
		}
		model.addAttribute("msg", 0);
		return "01_login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request,Model model){
		studentId = null;
		studentName = null;
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
		
		Integer num = memberService.changeInfo(studentId, request.getParameter("phone"), request.getParameter("email"), request.getParameter("address"), request.getParameter("password"));
		UserInfoDTO userInfoDTO = memberService.userInfo(studentId);
		request.setAttribute("userInfoDTO", userInfoDTO);
		System.out.println(userInfoDTO);
//		String pw = request.getParameter("password");
//		String pwCheck = request.getParameter("passwordCheck");
		return "02_user_info";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(HttpServletRequest request, Model model) {
		return "09_edit";
	}	
}
