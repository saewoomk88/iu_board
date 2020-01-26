package com.iu.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.iu.util.Pager;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public ModelAndView join(MemberDTO memberDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = memberDAO.join(memberDTO);
		String msg ="가입성공";
		String path = "redirect:../";
		if(result<1) {
			msg = "join Fail";
			path = "redirect:join";
		}
		mv.addObject("msg", msg);
		mv.setViewName(path);
		return mv;
	}
	
	public ModelAndView login(MemberDTO memberDTO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("2");
		memberDTO = memberDAO.login(memberDTO);
		String path="";
		if(memberDTO !=null) {
			session.setAttribute("member", memberDTO);
			path="redirect:../";
		}else {
			path="redirect:login";
			mv.addObject("msg", "ID or PW Fail");
		}
		mv.setViewName(path);
		return mv;
	}
	
	public ModelAndView modify(MemberDTO memberDTO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("member");
		memberDTO.setId(loginDTO.getId());
		
		int result= memberDAO.modify(memberDTO);
		String msg="";
		String path="redirect:modify";
		if(result>0) {
			session.setAttribute("member", memberDTO);
			msg="modify success";
		}else {
			
			msg="modify Fail";
		}
		mv.addObject("msg", msg);
		mv.setViewName(path);
		return mv;
	}
	
	public ModelAndView delete(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("member");
		int result=memberDAO.delete(loginDTO.getId());
		String msg="탈퇴 실패";
		if(result>0) {
			msg = "탈퇴 성공";
			session.invalidate();
		}
		mv.addObject("msg", msg);
		mv.setViewName("redirect:../");
		return mv;
	}
	
	public ModelAndView list(Pager pager) throws Exception {
		pager.makeRow();
		int totalCount = memberDAO.totalCount();
		pager.paging(totalCount);
		ModelAndView mv = new ModelAndView();
		mv.addObject("mem", memberDAO.list(pager));
		mv.addObject("pager", pager);
		mv.setViewName("member/list");
		mv.addObject("iu", "master");
		System.out.println("Servicelist");
		System.out.println(pager.getCurBlock());
		return mv;
	}
	
	public ModelAndView logout(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		mv.setViewName("redirect:../");
		return mv;
	}

}
