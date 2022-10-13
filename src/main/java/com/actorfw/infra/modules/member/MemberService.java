package com.actorfw.infra.modules.member;

import java.util.List;


public interface MemberService {

//---------------------------------------------------------------------	
//	회원리스트
	public List<Member> selectList(MemberVo vo) throws Exception;
//	배우리스트
	public List<Member> actorList(MemberVo vo) throws Exception;
//	감독리스트
	public List<Member> directorList(MemberVo vo) throws Exception;
//---------------------------------------------------------------------
	
	
	public Member selectOne(MemberVo vo) throws Exception;
	
//	멤버인서트
	public int insertCd(Member dto) throws Exception;
//	멤버업데이트
	public int updateCd(Member dto) throws Exception; 
//	멤버sns인서트
//	public int insertSnsCd(Member dto) throws Exception;
	
//	아이디중복 체크
	public int idCheck(Member dto) throws Exception;
	
//	로그인
	public Member logInCd(Member dto) throws Exception;
	
	public Member imageView(Member dto) throws Exception; 
//	페이징
	public int selectOneCount(MemberVo vo) throws Exception;
}
