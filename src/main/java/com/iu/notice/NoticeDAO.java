package com.iu.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.board.BoardDAO;
import com.iu.board.BoardDTO;
import com.iu.util.Pager;

@Repository
public class NoticeDAO implements BoardDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE="noticeMapper.";

	@Override
	public List<BoardDTO> list(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"list", pager);
	}

	@Override
	public BoardDTO selectOne(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"selectOne", num);
	}

	@Override
	public int insert(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"insert", boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"update", boardDTO);
	}

	@Override
	public int delete(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE+"delete", num);
	}

	@Override
	public int hitup(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"hitup", num);
	}

	@Override
	public int totalCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"totalCount");
	}

}
