package com.actorfw.infra.modules.xtourpost;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class TourPostDao {
	
	public static String namespace = "com.actorfw.infra.modules.xtourpost.TourPostMapper";
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	public List<TourPost> tourList(TourPostVo vo) {
		return sqlSession.selectList(namespace + ".tourList", vo);
	}
	
//	투어정보Inst
	public int insrtTour(TourPost dto) {
		return sqlSession.insert(namespace +".insrtTour", dto);
	}

}
