package com.actorfw.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace = "com.actorfw.infra.modules.member.MemberMapper";
//	public static String tournamespace = "com.actorfw.infra.modules.post.PostMapper";
	
	
	public List<Member> selectList (MemberVo vo) { return sqlSession.selectList(namespace + ".selectList", vo);}
	
	public Member selectOne (MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insertCd(Member dto) { return sqlSession.insert(namespace + ".insertCd", dto); }
//	public int insertSnsCd(Member dto) { return sqlSession.insert(namespace + ".insertSnsCd", dto); }
	public int updateCd(Member dto) { return sqlSession.update(namespace + ".updateCd", dto); }
	
//	아이디 중복 체크
	public int idCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".idCheck", dto);
	}
	
//	로그인
	public Member logInCd(Member dto) { return sqlSession.selectOne(namespace + ".logInCd", dto);
	}
	
//	메인페이지 리스트
	public int selectLastSeq() {
		return sqlSession.selectOne(namespace + ".selectLastSeq" , "");
	}
	public int insertMemberUpload(Member dto) {
		return sqlSession.insert(namespace + ".insertMemberUpload" , dto);
	}

	
	
}
