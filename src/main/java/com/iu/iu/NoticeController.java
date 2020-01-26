package com.iu.iu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iu.board.BoardDTO;
import com.iu.notice.NoticeService;
import com.iu.util.Pager;

@Controller
@RequestMapping(value="notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="noticeList")
	public ModelAndView list(Pager pager) throws Exception{
		System.out.println(pager.getCurBlock());
		return noticeService.list(pager);
	}
	
	@RequestMapping(value="noticeOne")
	public ModelAndView selectOne(int num)throws Exception{
		return noticeService.selectOne(num);
	}
	
	@RequestMapping(value="noticeWrite", method=RequestMethod.GET)
	public ModelAndView insert() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("board", "notice");
		mv.setViewName("board/boardWrite");
		return mv;
	}

	@RequestMapping(value="noticeWrite", method=RequestMethod.POST)
	public ModelAndView insert(BoardDTO boardDTO)throws Exception{
		return noticeService.insert(boardDTO);
	}
	
	@RequestMapping(value="noticeUpdate", method=RequestMethod.GET)
	public ModelAndView update() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("board", "notice");
		mv.setViewName("board/boardUpdate");
		return mv;
	}
	
	@RequestMapping(value="noticeUpdate", method=RequestMethod.POST)
	public ModelAndView update(BoardDTO boardDTO) throws Exception{
		
		return noticeService.update(boardDTO);
	}
	
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public ModelAndView delete(int num) throws Exception{
		
		return noticeService.delete(num);
	}

}
