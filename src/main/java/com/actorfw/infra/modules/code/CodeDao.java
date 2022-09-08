package com.actorfw.infra.modules.code;

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
	
	
	public List<Code> addCodeName() { return sqlsession.selectList(namespace +".addCodeName", "");}
	
}
