package com.actorfw.infra.modules.xactorpost;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ActorPostDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace = "com.actorfw.infra.modules.xactorpost.ActorPostMapper";

	public List<ActorPost> actorList(ActorPostVo vo) {
		return sqlSession.selectList(namespace + ".actorList", vo);
	}
	public ActorPost selectOne(ActorPostVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	public List<ActorPost> snslist(ActorPostVo vo) throws Exception { return sqlSession.selectList(namespace + ".snslist", vo);}
	
	
	
	
	
	
	
	
	public int selectOneCount(ActorPostVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	
	
}
