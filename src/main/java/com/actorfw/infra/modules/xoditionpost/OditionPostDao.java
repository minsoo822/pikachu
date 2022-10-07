package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OditionPostDao {

	public static String namespace = "com.actorfw.infra.modules.xoditionpost.OditionPostMapper";
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
//	오디션리스트
	public List<OditionPost> oditionList(OditionPostVo vo) {
		return sqlSession.selectList(namespace + ".oditionList", vo);
	}
	
//	오디션정보Inst
	public int insrtOdition(OditionPost dto) {
		return sqlSession.insert(namespace +".insrtOdition", dto);
	}
	
	
	
	
}
