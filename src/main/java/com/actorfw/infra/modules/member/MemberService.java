package com.actorfw.infra.modules.member;

import java.util.List;

public interface MemberService {

		public List<Member> selectList() throws Exception;
		
		public List<Member> searchList(MemberVo vo) throws Exception;

}
