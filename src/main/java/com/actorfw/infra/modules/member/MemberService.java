package com.actorfw.infra.modules.member;

import java.util.List;

public interface MemberService {

	public List<Member> selectList(MemberVo vo) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	public int insertCd(Member dto) throws Exception;
	
//	아이디중복 체크
	public int idCheck(Member dto) throws Exception;
	
//	로그인
	public Member logInCd(Member dto) throws Exception;
	
}