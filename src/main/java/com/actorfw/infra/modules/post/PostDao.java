package com.actorfw.infra.modules.post;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PostDao {
	
	public static String namespace = "com.actorfw.infra.modules.post.PostMapper";
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	public List<Post> tourList(PostVo vo) {
		return sqlSession.selectList(namespace + ".tourList", vo);
	}
	
	public List<Post> oditionList(PostVo vo) {
		return sqlSession.selectList(namespace + ".oditionList", vo);
	}
	
	
}
