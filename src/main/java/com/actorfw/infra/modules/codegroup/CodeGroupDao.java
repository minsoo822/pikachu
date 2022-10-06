package com.actorfw.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.actorfw.infra.modules.code.Code;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.actorfw.infra.modules.codegroup.CodeGroupMapper";
	
//	public List<CodeGroup> selectList(CodeGroupVo vo) {
//		return sqlSession.selectList(namespace + ".selectList", vo); 
//	}
	
	
	
	public List<CodeGroup> selectList(CodeGroupVo vo){ 
		List<CodeGroup> dto = sqlSession.selectList(namespace + ".selectList", vo);
//		List<CodeGroup> list = sqlSession.selectList("com.actorfw.infra.modules.codegroup.CodeGroupMapper", vo);
//		return sqlSession.selectList(namespace + ".selectList", vo);
		return dto;
	}
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result" + result);
		return result;
	}
	
	public CodeGroup selectOne(CodeGroupVo vo) {
		
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result" + result);
		return result;
	}
	
	public int update1(CodeGroup dto) { return sqlSession.update(namespace + ".update1" , dto); }
	
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete" , dto); }
	
	public int delete(CodeGroupVo vo) { return sqlSession.delete(namespace + ".delelte" , vo); }
	
	
//	
//	  public List<CodeGroup> searchList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".searchList", vo); }
//	 
//------------------------------------------------------------------------------------------------------------------
	
	public int selectOneCount(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	
	}
