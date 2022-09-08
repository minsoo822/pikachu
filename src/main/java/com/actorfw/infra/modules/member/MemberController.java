package com.actorfw.infra.modules.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	
	
	
	
	
	
	
//------------------------------------------------------ 페이지 이동

	@RequestMapping(value = "mainIndex")			//메인페이지 인덱스
	public String mainIndex() throws Exception {
		
		return "infra/member/user/mainIndex";
	}
	
	@RequestMapping(value = "mainViewForm")			//메인페이지뷰
	public String mainViewForm() throws Exception {
		
		return "infra/member/user/mainViewForm";
	}
	
	
	
}
