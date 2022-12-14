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
	
	public TourPost selectOne(TourPostVo vo) {
	    TourPost result = sqlSession.selectOne(namespace + ".selectOne", vo);
        System.out.println("dao result: " + result);
        return result;   
	}

	public int selectOneCount(TourPostVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int insertTourUpload(TourPost dto) { 
	    return sqlSession.insert(namespace + ".insertTourUpload", dto);
	}
	
	public int selectLastSeq() {
	    return sqlSession.selectOne(namespace + ".selectLastSeq", "");
	}
	
	
	
	
}
