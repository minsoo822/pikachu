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
//-------------------------------------------------------------------------------------------	
//	회원리스트
	public List<Member> selectList (MemberVo vo) { return sqlSession.selectList(namespace + ".selectList", vo);}
//	리스트
	public List<Member> listFromCategory (int a) { return sqlSession.selectList(namespace + ".listFromCategory", a);}

//  마이페이지 리스트에 올것듯 -----------------------------------------------------------  
//  sns정보
	public List<Member> selectSnsList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectSnsList", vo); }
//  filmo정보
	public List<Member> selectFilmoList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectFilmoList", vo); }
//  edu정보
	public List<Member> selectEduList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectEduList", vo); }
//  award정보
	public List<Member> selectAwardList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectAwardList", vo); }
//-------------------------------------------------------------------------------------------	
	
	public Member selectOne (MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
//-------------------------------------------------------------------------------------------  
//	인서트
	public int insertCd(Member dto) { return sqlSession.insert(namespace + ".insertCd", dto); }
//  SNS회원가입
    public int kakaoInst(Member dto) { return sqlSession.insert(namespace + ".kakaoInst", dto); }
//-------------------------------------------------------------------------------------------  
	//배우인서트
	public int insertSnsCd(Member dto) { return sqlSession.insert(namespace + ".insertSnsCd", dto); }
	public int insertFilmoCd(Member dto) { return sqlSession.insert(namespace + ".insertFilmoCd", dto); }
	public int insertEduCd(Member dto) { return sqlSession.insert(namespace + ".insertEduCd", dto); }
	public int insertAwardCd(Member dto) { return sqlSession.insert(namespace + ".insertAwardCd", dto); }
	public int insertCareerCd(Member dto) { return sqlSession.insert(namespace + ".insertCareerCd", dto); }
	
//-------------------------------------------------------------------------------------------   
    //감독인서트
	public int insertCompanyCd(Member dto) { return sqlSession.insert(namespace + ".insertCompanyCd", dto); }
	public int insertCompanyWorkCd(Member dto) { return sqlSession.insert(namespace + ".insertCompanyWorkCd", dto);}
//-------------------------------------------------------------------------------------------   
	//	업데이트
	public int updateCd(Member dto) { return sqlSession.update(namespace + ".updateCd", dto); }
	public int updateSnsCd(Member dto) { return sqlSession.update(namespace + ".updateSnsCd", dto); }
	public int updateFilmoCd(Member dto) { return sqlSession.update(namespace + ".updateFilmoCd", dto); }
	public int updateEduCd(Member dto) { return sqlSession.update(namespace + ".updateEduCd", dto); }
	public int updateAwardCd(Member dto) { return sqlSession.update(namespace + ".updateAwardCd", dto); }

//	아이디 중복 체크
	public int idCheck(Member dto) { return sqlSession.selectOne(namespace + ".idCheck", dto); }
	
//	로그인
	public Member logInCd(Member dto) { return sqlSession.selectOne(namespace + ".logInCd", dto); }
//  kakao로그인
    public Member kakaoLogincheck(Member dto) { return sqlSession.selectOne(namespace + ".kakaoLogincheck", dto); }
	
//	메인페이지 리스트에 올것듯 -----------------------------------------------------------
	
	public int selectLastSeq() { return sqlSession.selectOne(namespace + ".selectLastSeq" , "");}
	public int selectLastcompanySeq() { return sqlSession.selectOne(namespace + ".selectLastcompanySeq", "");}
	public int selectSeq() { return sqlSession.selectOne(namespace + ".selectSeq", "");}
//	파일업로드
	public int insertMemberUpload(Member dto) { return sqlSession.insert(namespace + ".insertMemberUpload" , dto);}
//	메인프로필사진 미리보기
	public Member imageMainView(Member dto) { return sqlSession.selectOne(namespace + ".imageMainView" , dto);}
//	서브프로필사진 불러오기
	public List<Member> imageSubView(Member dto) {return sqlSession.selectList(namespace + ".imageSubView", dto); }
//	연기영상
	public List<Member> actorVideo(Member dto) { return sqlSession.selectList(namespace + ".actorVideo", dto);}
//	페이징
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	

	
	
	
	
}
