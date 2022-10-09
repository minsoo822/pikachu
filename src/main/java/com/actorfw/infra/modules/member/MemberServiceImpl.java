package com.actorfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.actorfw.infra.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
//	멤버리스트
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception { 
		return dao.selectList(vo); 
	}
	@Override
	public Member selectOne(MemberVo vo) throws Exception  { return dao.selectOne(vo); }
	
//	멤버인서트
	@Override
	public int insertCd(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.insertCd(dto);
	}
//	멤버sns인서트
	@Override
	public int insertSnsCd(Member dto) throws Exception {
		return dao.insertSnsCd(dto);
	}
	@Override
	public int updateCd(Member dto) throws Exception { return dao.updateCd(dto); }
	
//	아이디 중복체크
	@Override
	public int idCheck(Member dto) throws Exception  { return dao.idCheck(dto);}
	
//	로그인
	@Override
	public Member logInCd(Member dto) throws Exception  { return dao.logInCd(dto); }
	
	
	
}
