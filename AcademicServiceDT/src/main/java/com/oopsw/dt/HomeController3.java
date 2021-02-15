package com.oopsw.dt;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {

		return "01_login";
	}

	@RequestMapping(value = "/loginMain", method = RequestMethod.GET)
	public String loginMain(HttpServletRequest request, Model model) {

		return "01_login";
	}

	@RequestMapping(value = "/id", method = RequestMethod.GET)
	public String id(HttpServletRequest request, Model model) {

		return "07_find_id";
	}

	@RequestMapping(value = "/pw", method = RequestMethod.GET)
	public String pw(HttpServletRequest request, Model model) {

		return "07_find_pw";
	}

	@RequestMapping(value = "/idPhoneCheck", method = RequestMethod.GET)
	public String idPhoneCheck(HttpServletRequest request, Model model) {

		String name = request.getParameter("name");
		String phone = "010" + request.getParameter("num2");
		String studentId = memberService.idPhoneCheck(name, phone);
		System.out.println(name + " " + phone);
		if (studentId != null) {

			request.setAttribute("studentId", studentId);
			request.setAttribute("name", name);

			return "07_find_id_print";
		}
		return "07_find_id";
	}

	@RequestMapping(value = "/pwPhoneCheck", method = RequestMethod.GET)
	public String pwPhoneCheck(HttpServletRequest request, Model model) {

		String studentId = request.getParameter("id");
		String phone = "010" + request.getParameter("num2");
		String pw = memberService.pwPhoneCheck(studentId, phone);
		if (pw != null) {

			request.setAttribute("studentId", studentId);
			request.setAttribute("pw", pw);

			return "07_find_pw_print";
		}
		return "07_find_pw";
	}

	@RequestMapping(value = "/telcheck", method = RequestMethod.GET)
	public String telcheck(Model model, HttpServletRequest request) {

		String view = null;
		// 사용자가 입력한 휴대폰은 넘겨 받는다.
		String tel = request.getParameter("tel");

		// send() 메소드를 통해 리턴받은 난수
		String check = Send.send(tel.trim());

		// 난수를 담은 check를 model 에 저장
		model.addAttribute("check", check);

		view = "ajax";

		return view;
	}

	@RequestMapping(value = "/subjects", method = RequestMethod.GET)
	public String subjects(HttpServletRequest request, Model model) {

		Collection<SubjectDTO> list = memberService.subjectList(model, request);
		request.setAttribute("list", list);
		return "03_subjects";
	}

	@RequestMapping(value = "/subjects2", method = RequestMethod.GET)
	public String subjects2(HttpServletRequest request, Model model) {

		Collection<SubjectDTO> list = memberService.subjectList2(model, request);
		request.setAttribute("list", list);

		return "03_subjects";
	}

	@RequestMapping(value = "/subjects3", method = RequestMethod.GET)
	public String subjects3(HttpServletRequest request, Model model) {

		Collection<SubjectDTO> list = memberService.subjectList3(model, request);
		request.setAttribute("list", list);

		return "03_subjects";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");

		String subjectCode = request.getParameter("subjectCode");

		// 현재
		int myNum = memberService.myNum(id);
		//System.out.println("현재까지 내가 신청한 학점" + myNum);
		int insertNum = memberService.subjectNum(subjectCode);
		//System.out.println("들어갈 학점" + insertNum);

		if (myNum + insertNum > 21) {
			model.addAttribute("msg", 0);

		} else {
			int result = memberService.insert(subjectCode, id);
			System.out.println("insert 갯수 : " + result);
		}

		Collection<SubjectDTO> list = memberService.subjectList(model, request);
		request.setAttribute("list", list);

		return "03_subjects";
	}

}
