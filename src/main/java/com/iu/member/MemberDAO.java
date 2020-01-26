package com.iu.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.iu.util.Pager;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private static final String NAMESPACE="memberMapper.";
	
	public int join(MemberDTO memberDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"join", memberDTO);
	}
	
	public MemberDTO login(MemberDTO memberDTO) throws Exception{
		System.out.println("1");
		return sqlSession.selectOne(NAMESPACE+"login", memberDTO);
	}
	
	public int modify(MemberDTO memberDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"modify", memberDTO);
	}
	
	public int delete(String id) throws Exception{
		return sqlSession.delete(NAMESPACE+"delete", id);
	}
	
	public List<MemberDTO>list(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"list", pager);
	}
	
	

}
