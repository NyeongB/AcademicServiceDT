package com.oopsw.dt;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.oopsw.util.*;

@Service
public class MemberService3 {

	@Autowired
	private MemberDAO3 memberDAO;

	public String idPhoneCheck(String name, String phone) {
		// TODO Auto-generated method stub
		return memberDAO.idPhoneCheck(name, phone);
	}

	public String findId(String name, String phone) {
		// TODO Auto-generated method stub
		return memberDAO.findId(name, phone);
	}

	public String pwPhoneCheck(String studentId, String phone) {
		// TODO Auto-generated method stub
		return memberDAO.pwPhoneCheck(studentId, phone);
	}

	public Collection<SubjectDTO> subjectList(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");
		int count = memberDAO.getCount(id);
		

		Paging paging = new Paging();
		String pageNum = request.getParameter("pageNum");

		// 테이블에서 가져올 리스트의 시작과 끝 위치
		int start = paging.getStart(pageNum, count);
		int end = paging.getEnd(pageNum, count);

		// 페이지번호를 받아온
		String pageIndexList = paging.pageIndexList(pageNum, count);

		// 시작과 끝 dto에 담기( 여기선 IndexDTO로 했지만 매개변수로 DTO를 쓰고있는경우는 그 DTO안에
		// start,end만들어야함)
		IndexDTO dto = new IndexDTO();
		dto.setStart(start);
		dto.setEnd(end);
		
		
		request.setAttribute("pageIndexList", pageIndexList);
		
		return memberDAO.getAllSchedule(start,end, id);
	}

	public Collection<SubjectDTO> subjectList2(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");
		int count = memberDAO.getCount2(id);

		Paging paging = new Paging();
		String pageNum = request.getParameter("pageNum");

		// 테이블에서 가져올 리스트의 시작과 끝 위치
		int start = paging.getStart(pageNum, count);
		int end = paging.getEnd(pageNum, count);

		// 페이지번호를 받아온
		String pageIndexList = paging.pageIndexList(pageNum, count);

		// 시작과 끝 dto에 담기( 여기선 IndexDTO로 했지만 매개변수로 DTO를 쓰고있는경우는 그 DTO안에
		// start,end만들어야함)
		IndexDTO dto = new IndexDTO();
		dto.setStart(start);
		dto.setEnd(end);

		request.setAttribute("pageIndexList", pageIndexList);
		
		return memberDAO.getAllSchedule2(start,end, id);
	}

	public Collection<SubjectDTO> subjectList3(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("studentId");
		int count = memberDAO.getCount3(id);

		Paging paging = new Paging();
		String pageNum = request.getParameter("pageNum");

		// 테이블에서 가져올 리스트의 시작과 끝 위치
		int start = paging.getStart(pageNum, count);
		int end = paging.getEnd(pageNum, count);

		// 페이지번호를 받아온
		String pageIndexList = paging.pageIndexList(pageNum, count);

		// 시작과 끝 dto에 담기( 여기선 IndexDTO로 했지만 매개변수로 DTO를 쓰고있는경우는 그 DTO안에
		// start,end만들어야함)
		IndexDTO dto = new IndexDTO();
		dto.setStart(start);
		dto.setEnd(end);

		request.setAttribute("pageIndexList", pageIndexList);
		
		return memberDAO.getAllSchedule3(start,end, id);
	}

	public int insert(String subjectCode, String studentId) {
		// TODO Auto-generated method stub
		return memberDAO.insert(subjectCode,studentId);
	}

	public int myNum(String id) {
		// TODO Auto-generated method stub
		return memberDAO.myNum(id);
	}

	public int subjectNum(String subjectCode) {
		// TODO Auto-generated method stub
		return memberDAO.subjectNum(subjectCode);
	}

}
