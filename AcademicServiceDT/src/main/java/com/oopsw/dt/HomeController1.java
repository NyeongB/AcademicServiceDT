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
	
	@RequestMapping(value = "/mySubjects", method = RequestMethod.GET) // 신청과목조회
	public String checkApplySubject(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");
		
		Collection<SubjectDTO> list = memberService.check(id);
		request.setAttribute("list", list);
		
		return "04_my_subjects";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET) // 신청과목삭제
	public String delete(HttpServletRequest request, Model model) {
		
		Integer num = memberService.delete(request.getParameter("registerCode"));
		
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");
		
		Collection<SubjectDTO> list = memberService.check(id);
		request.setAttribute("list", list);
		
		return "04_my_subjects";
	}
	
	@RequestMapping(value = "/myScore", method = RequestMethod.GET) // 한 학기성적
	public String scoreInfo(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");
		
		Collection<ScoreDTO> list = memberService.score(id, request.getParameter("y"), request.getParameter("s"));
		
		//성적 계산
		for(ScoreDTO dto : list){
			int score = Integer.parseInt(dto.getScore());
			dto.setScoreChange(calScore(score));
			}
		
		request.setAttribute("list", list);

		return "05_myScore";
	}
	@RequestMapping(value = "/myScores", method = RequestMethod.GET) // 전체성적
	public String scoreInfo2(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");

		Collection<ScoreDTO> list = memberService.scoreAll(id);
		
		//성적 계산
		for(ScoreDTO dto : list){
			int score = Integer.parseInt(dto.getScore());	
			dto.setScoreChange(calScore(score));
			}

		request.setAttribute("list", list);
		
		return "05_myScore";
	}
	
	@RequestMapping(value = "/start", method = RequestMethod.GET) // 첫화면
	public String scoreInfo3(HttpServletRequest request, Model model) {

		return "05_myScore";
	}
	
	public String calScore(int score){ // 학점변환
		
		String result = "";
		
		if(score > 95 && score <= 100){
			result = "A+";
		}
		else if(score > 90 && score <= 95){
			result = "A0";
		}
		else if(score > 85 && score <= 90){
			result = "B+";
		}
		else if(score > 80 && score <= 85){
			result = "B0";
		}
		else if(score > 75 && score <= 80){
			result = "C+";
		}
		else if(score > 70 && score <= 75){
			result = "C0";
		}
		else {
			result = "F";
		}
		return result;
	}
	
}
