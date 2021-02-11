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


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController3 {
	
	@Autowired
	private MemberService3 memberService;
	
	/*@Autowired
	private PagingService pagingService;*/
	
	@RequestMapping(value = "/subjects", method = RequestMethod.GET)
	public String subjects(HttpServletRequest request, Model model) {
		
		Collection<SubjectDTO> list = memberService.subjectList();
		request.setAttribute("list", list);
		
		return "03_subjects";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {
		
		return "01_login";
	}
	
	
	
}
