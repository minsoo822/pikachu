package com.actorfw.infra.modules.xactorpost;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ActorPostDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.actorfw.infra.modules.xactorpost.ActorPostMapper";
	
	
	
	
	
	
}
