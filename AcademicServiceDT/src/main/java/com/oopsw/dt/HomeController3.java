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

import com.oopsw.util.Send;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController3 {
	
	@Autowired
	private MemberService3 memberService;
	
	@RequestMapping(value = "/subjects", method = RequestMethod.GET)
	public String subjects(HttpServletRequest request, Model model) {
		
		Collection<SubjectDTO> list = memberService.subjectList(model, request);
		request.setAttribute("list", list);
		
		return "03_subjects";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {
		
		return "01_login";
	}	
	
	@RequestMapping(value = "/idPhoneCheck", method = RequestMethod.GET)
	public String idPhoneCheck(HttpServletRequest request,Model model){
		String studentId = memberService.idPhoneCheck(request.getParameter("name"), request.getParameter("phone"));
		if(studentId !=null){			
			HttpSession session = request.getSession(true);
			
			session.setAttribute("studentId", studentId);
			System.out.println(studentId);

			return "08_certification";
		}
		return "01_login";
	}
	
	@RequestMapping(value = "/id", method = RequestMethod.GET)
	public String id(HttpServletRequest request,Model model){

			return "07_find_id";
	}
	
	@RequestMapping(value = "/telcheck", method = RequestMethod.GET)
	public String telcheck(Model model,HttpServletRequest request)
	{
		
		String view = null;
		// 사용자가 입력한 휴대폰은 넘겨 받는다.
		String tel = request.getParameter("tel");		
		
		// send() 메소드를 통해 리턴받은 난수 
		String check = Send.send(tel.trim());
		
		// 난수를 담은 check를  model 에 저장 
		model.addAttribute("check",check);
		
		view = "ajax";
		
		return view;
	}
	
	
}
