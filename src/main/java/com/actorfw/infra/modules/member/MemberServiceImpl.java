package com.actorfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {




	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		
		return dao.selectList();
	}

	@Override
	public List<Member> searchList(MemberVo vo) throws Exception {
		
		return dao.searchList(vo);
	}
	
	
	

}	
	