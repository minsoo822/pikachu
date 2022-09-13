package com.actorfw.infra.modules.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	
	
	
	
	
	
	
//------------------------------------------------------ 페이지 이동

	@RequestMapping(value = "mainIndex")			//메인페이지 인덱스		/member/mainIndex
	public String mainIndex() throws Exception {
		
		return "infra/member/user/mainIndex";
	}
	
	@RequestMapping(value = "mainViewForm")			//메인페이지뷰			/member/mainViewForm
	public String mainViewForm() throws Exception {
		
		return "infra/member/user/mainViewForm";
	}
	
	@RequestMapping(value = "oditionView")			//오디션공고 메인페이지	/member/oditionView
	public String oditionView() throws Exception {
		
		return "infra/member/user/oditionPostViewForm";
	}
	
	@RequestMapping(value = "oditionMod")			//오디션공고 상세페이지	/member/oditionMod
	public String oditionMod() throws Exception {
		
		return "infra/member/user/oditionPostModForm";
	}
	
	@RequestMapping(value = "tourPostViewForm")			//투어정보 메인페이지			/member/tourView
	public String tourPostViewForm() throws Exception {
		
		return "infra/member/user/tourPostViewForm";
	}
	
	@RequestMapping(value = "signInForm")			//로그인 메인페이지		/member/signInForm
	public String signInForm() throws Exception {
		
		return "infra/member/user/signInForm";
	}
	
	@RequestMapping(value = "signUpForm")			//회원가입 페이지			/member/signUpForm
	public String signUpForm() throws Exception {
		
		return "infra/member/user/signUpForm";
	}
	
@RequestMapping(value = "actorPostViewForm")		//배우 메인게시판			/member/actorPostViewForm
	public String actorPostViewForm() throws Exception {
		
		return "infra/member/user/actorPostViewForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
