package com.iu.iu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iu.board.BoardDTO;
import com.iu.member.MemberDTO;
import com.iu.member.MemberService;
import com.iu.notice.NoticeService;
import com.iu.util.Pager;

@Controller
@RequestMapping(value="member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public void join() throws Exception{}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public ModelAndView join(MemberDTO memberDTO)throws Exception{
		return memberService.join(memberDTO);
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void login()throws Exception{}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView login(MemberDTO memberDTO, HttpSession session)throws Exception{
		System.out.println("con");
		return memberService.login(memberDTO, session);
	}
	
	@RequestMapping(value="modify", method=RequestMethod.GET)
	public void modify() throws Exception{}
	
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public ModelAndView modify(MemberDTO memberDTO, HttpSession session) throws Exception{
		return memberService.modify(memberDTO, session);
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public ModelAndView delete(HttpSession session) throws Exception{
		return memberService.delete(session);
	}
	
	@RequestMapping(value="list")
	public ModelAndView list(Pager pager)throws Exception{
		System.out.println("controll list");
		return memberService.list(pager);
	}
	@RequestMapping(value="logout")
	public ModelAndView logout(HttpSession session) throws Exception{
		return memberService.logout(session);
	}
	
}
