package com.actorfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.actorfw.infra.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	public List<Member> selectList(MemberVo vo) throws Exception { return dao.selectList(vo); }
	
	public Member selectOne(MemberVo vo) throws Exception  { return dao.selectOne(vo); }
	
	public int insertCd(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.insertCd(dto);
	}
	public int updateCd(Member dto) throws Exception { return dao.updateCd(dto); }
	
//	아이디 중복체크
	public int idCheck(Member dto) throws Exception  { return dao.idCheck(dto);}
	
//	로그인
	public Member logInCd(Member dto) throws Exception  { return dao.logInCd(dto); }
	
	
	
}
