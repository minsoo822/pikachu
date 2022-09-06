package com.actorfw.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.actorfw.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result" + result);
		return result;
	}
	
	
//		return sqlSession.selectList(namespace + ".selectList", ""); }
	
	/*
	 * public List<Member> searchList(MemberVo vo){ return
	 * sqlSession.selectList(namespace + ".searchList", vo); }
	 */ 
	
	
	
	
	
}
