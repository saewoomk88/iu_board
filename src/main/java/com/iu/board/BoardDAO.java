package com.iu.board;

import java.util.List;

import com.iu.util.Pager;

public interface BoardDAO {
	
	public List<BoardDTO> list(Pager pager) throws Exception;
	public BoardDTO selectOne(int num) throws Exception;
	public int insert(BoardDTO boardDTO) throws Exception;
	public int update(BoardDTO boardDTO) throws Exception;
	public int delete(int num) throws Exception;
	public int hitup(int num) throws Exception;
	public int totalCount() throws Exception;

}
