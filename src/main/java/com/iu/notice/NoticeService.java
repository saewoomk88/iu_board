package com.iu.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.iu.board.BoardDTO;
import com.iu.board.BoardService;
import com.iu.util.Pager;
@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public ModelAndView list(Pager pager) throws Exception{
		// TODO Auto-generated method stub
		pager.makeRow();
		int totalCount = noticeDAO.totalCount();
		pager.paging(totalCount);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("list", noticeDAO.list(pager));
		mv.addObject("pager", pager);
		mv.addObject("board", "notice");
		mv.setViewName("board/boardList");
		return mv;
	}

	@Override
	public ModelAndView selectOne(int num) throws Exception {
		// TODO Auto-generated method stub
		
		ModelAndView mv = new ModelAndView();
		noticeDAO.hitup(num);
		mv.addObject("dto", noticeDAO.selectOne(num));
		mv.addObject("board", "notice");
		mv.setViewName("board/boardOne");
		return mv;
	}

	@Override
	public ModelAndView insert(BoardDTO boardDTO) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		mv.addObject(noticeDAO.insert(boardDTO));
		mv.setViewName("redirect:noticeList");
		return mv;
	}

	@Override
	public ModelAndView update(BoardDTO boardDTO) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		noticeDAO.update(boardDTO);
		mv.setViewName("redirect:noticeOne?num="+boardDTO.getNum());
		return mv;
	}

	@Override
	public ModelAndView delete(int num) throws Exception{
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		noticeDAO.delete(num);
		mv.setViewName("redirect:noticeList");
		return mv;
	}

	
	

}
