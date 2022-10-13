package com.actorfw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlsession;
	
	private static String namespace = "com.actorfw.infra.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo) { return sqlsession.selectList(namespace + ".selectList", vo);}
	
	public Code selectOne(CodeVo vo) { 
		
		Code result = sqlsession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result" + result);
		return result;
	}
	
	public List<Code> addCodeName(CodeVo vo) { return sqlsession.selectList(namespace +".addCodeName", vo);}
	
	public int insertCd(Code dto) { 
	
	int result = sqlsession.insert(namespace + ".insertCd", dto);
	System.out.println("Dao Insert: " + result);
	
	return result;
	}
		
		
	public int updateCd(Code dto) { return sqlsession.update(namespace + ".updateCd", dto); }

	public List<Code> selectListCachedCodeArrayList() {
		
		return sqlsession.selectList(namespace + ".selectListCachedCodeArrayList", null); 
	}
	
//	페이징
	public int selectOneCount(CodeVo vo) {
		return sqlsession.selectOne(namespace + ".selectOneCount" , vo);
	}
	
	
	
	
}
