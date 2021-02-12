package com.oopsw.dt;

import java.text.DateFormat;
import java.util.Collection;
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
import org.springframework.web.bind.support.SessionStatus;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController1 {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/mySubjects", method = RequestMethod.GET)
	public String checkApplySubject(HttpServletRequest request, Model model) {
		
		Collection<SubjectDTO> list = memberService.checkApplySubject();
		request.setAttribute("list", list);
		
		return "04_my_subjects";
	}
	
	@RequestMapping(value = "/myScore", method = RequestMethod.GET)
	public String scoreInfo(HttpServletRequest request, Model model) {
		
		
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");
		//Collection<ScoreDTO> list = memberService.score(id, "2020", "1");
		
		Collection<ScoreDTO> list = memberService.score(id, request.getParameter("y"), request.getParameter("s"));
		
		//session.setAttribute("list", list);
		
		
//		Collection<ScoreDTO> list = memberService.scoreInfo();
		request.setAttribute("list", list);
		
		return "05_myScore";
	}
	
}
