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
	
//	코드그룹리스트
	public List<CodeGroup> selectList(CodeGroupVo vo){ 
		List<CodeGroup> dto = sqlSession.selectList(namespace + ".selectList", vo);
		return dto;
	}
//	코드그룹정보삽입
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result" + result);
		return result;
	}
//	코드그룹 정보를 하나씩 가지고옴
	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result" + result);
		return result;
	}
//	코드그룹 정보수정
	public int update1(CodeGroup dto) { return sqlSession.update(namespace + ".update1" , dto); }
//	delNy 0 -> 1
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete" , dto); }
//	코드그룹 데이터 완전삭제
	public int delete(CodeGroupVo vo) { return sqlSession.delete(namespace + ".delelte" , vo); }
	
//------------------------------------------------------------------------------------------------------------------
	
	public int selectOneCount(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	
	}
