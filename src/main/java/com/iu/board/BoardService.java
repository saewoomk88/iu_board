package com.iu.board;

import org.springframework.web.servlet.ModelAndView;

import com.iu.util.Pager;

public interface BoardService {
	
	public ModelAndView list(Pager pager) throws Exception;
	public ModelAndView selectOne(int num) throws Exception;
	public ModelAndView insert(BoardDTO boardDTO) throws Exception;
	public ModelAndView update(BoardDTO boardDTO) throws Exception;
	public ModelAndView delete(int num) throws Exception;


}
