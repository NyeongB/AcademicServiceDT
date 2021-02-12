package com.oopsw.dt;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oopsw.util.*;


@Service	
public class MemberService3 {
	
	@Autowired
	private MemberDAO3 memberDAO;

	
	public Collection<SubjectDTO> subjectList(Model model, HttpServletRequest request) {
		
		int count = memberDAO.getCount();
		
		Paging paging = new Paging();
		String pageNum = request.getParameter("pageNum");
		
		//테이블에서 가져올 리스트의 시작과 끝 위치
				int start = paging.getStart(pageNum,count );
				int end = paging.getEnd(pageNum, count);
				
				// 페이지번호를 받아온 
				String pageIndexList = paging.pageIndexList(pageNum, count);
				
				
				// 시작과 끝 dto에 담기( 여기선 IndexDTO로 했지만 매개변수로 DTO를 쓰고있는경우는 그 DTO안에 start,end만들어야함)
				IndexDTO dto = new IndexDTO();
				dto.setStart(start);
				dto.setEnd(end);
				
		
		request.setAttribute("pageIndexList", pageIndexList);
		
		return memberDAO.getAllSchedule(dto);
	}


	public String idPhoneCheck(String name, String phone) {
		// TODO Auto-generated method stub
		System.out.println("1");
		return memberDAO.idPhoneCheck(name,phone);
	}
	
}
  