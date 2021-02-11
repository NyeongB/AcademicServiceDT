package com.oopsw.dt;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
private MemberService memberService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController1.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/loginAction", method = RequestMethod.GET)
	public String loginAction(HttpServletRequest request,Model model){
		String loginOK = memberService.login(request.getParameter("id"), request.getParameter("pw"));
		if(loginOK !=null){
			HttpSession session=request.getSession(true);			
			session.setAttribute("loginOK", loginOK);
			//model.addAttribute("loginOK", loginOK); 		
			return "02_user_info";
		}
		return "01_login";
	}
	
	
}
