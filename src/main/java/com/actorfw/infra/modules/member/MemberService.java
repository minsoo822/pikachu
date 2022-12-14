package com.actorfw.infra.modules.member;

import java.util.List;


public interface MemberService {

//---------------------------------------------------------------------	
//	회원리스트
	public List<Member> selectList(MemberVo vo) throws Exception;
//	리스트
	public List<Member> listFromCategory(int a) throws Exception;

//  마이페이지 리스트에 올것듯 ------------------------------------------------
//	sns정보
	public List<Member> selectSnsList(MemberVo vo) throws Exception;
//  filmo정보
	public List<Member> selectFilmoList(MemberVo vo) throws Exception;
//  edu정보
    public List<Member> selectEduList(MemberVo vo) throws Exception;
//  award정보
    public List<Member> selectAwardList(MemberVo vo) throws Exception;
//--------------------------------------------------------------------- 	
//  오디션지원현황 리스트
    public List<Member> supportList(MemberVo vo) throws Exception;
//--------------------------------------------------------------------- 
	public Member selectOne(MemberVo vo) throws Exception;
    /* public int selectSeq() throws Exception; */
//---------------------------------------------------------------------	
//	멤버 공통부분 인서트
	public int insertCd(Member dto) throws Exception;
//  SNS멤버 공통부분 인서트
    public int kakaoInst(Member dto) throws Exception;
    public int naverInst(Member dto) throws Exception;
//--------------------------------------------------------------------- 	
//  배우인서트
    public int insertSnsCd(Member dto) throws Exception;
    public int insertFilmoCd(Member dto) throws Exception;
    public int insertEduCd(Member dto) throws Exception;
    public int insertAwardCd(Member dto) throws Exception;
    public int insertCareerCd(Member dto) throws Exception;
	
//---------------------------------------------------------------------
//  감독인서트
    public int insertCompanyCd(Member dto) throws Exception;
    public int insertCompanyWorkCd(Member dto) throws Exception;
    
//---------------------------------------------------------------------    
//	멤버업데이트
	public int updateCd(Member dto) throws Exception; 
	public int updateSnsCd(Member dto) throws Exception;
	public int updateFilmoCd(Member dto) throws Exception;
	public int updateEduCd(Member dto) throws Exception;
	public int updateAwardCd(Member dto) throws Exception;
	
//	아이디중복 체크
	public int idCheck(Member dto) throws Exception;

	
//	로그인
	public Member logInCd(Member dto) throws Exception; 
	public Member snsLogincheck(Member dto) throws Exception;
	
	public Member imageMainView(Member dto) throws Exception; 
	public List<Member> imageSubView(Member dto) throws Exception;
	public List<Member> actorVideo(Member dto) throws Exception;
//	페이징
	public int selectOneCount(MemberVo vo) throws Exception;
	
//----------------------------------------------------------------------------
	
	
	
	
	
	
	
	
	
	
}
