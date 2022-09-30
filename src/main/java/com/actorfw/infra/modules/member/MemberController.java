package com.actorfw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.cj.Constants;

@Controller
@RequestMapping (value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	
	@RequestMapping(value = "memberList")
	public String selectList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		System.out.println("Controll List :" + list);
		return "infra/member/xdmin/memberList";
		
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("Controll Form :" + item);
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String isertCd(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int insertCd = service.insertCd(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("Controller Inst :" + insertCd);
		
		return "redirect:/member/memberList";
	}
	@RequestMapping(value = "memberUpdt")
	public String updateCd(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		int updateCd = service.updateCd(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("주소나와라 : " + updateCd);
		
		
		return "redirect:/member/memberList";
	}
	
	
	
//	아이디 중복확인
	@ResponseBody
	@RequestMapping(value = "idCheck")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.idCheck(dto);
		
		System.out.println("idCheck : " + result);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@RequestMapping(value = "loginForm")
	public String loginForm(Member dto) throws Exception {
		
		Member loginForm = service.logInCd(dto);
		System.out.println("loginForm : " + loginForm);
		
		return "infra/member/user/loginForm";
	}
	
	@ResponseBody
	@RequestMapping(value = "loginCheck")
	public Map<String, Object> logInCd(Member dto, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member logInCd = service.logInCd(dto);
		
		System.out.println("logInCd: " + logInCd);
		
		if(logInCd != null) {
			
			returnMap.put("rt", "success");
			
			httpSession.setMaxInactiveInterval(60 * 30); // 60second * 30 = 30minute
			httpSession.setAttribute("sessSeq", logInCd.getSeq());
			httpSession.setAttribute("sessId", logInCd.getId());
			httpSession.setAttribute("sessName", logInCd.getName());
			httpSession.setAttribute("sessAdmin", logInCd.getAdminNy());
			
			returnMap.put("name", logInCd.getName());
			returnMap.put("admin", logInCd.getAdminNy());
			
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@RequestMapping(value = "logoutForm")
	public String logoutForm(HttpSession httpSession) throws Exception {
		
		httpSession.invalidate();
		
		return "infra/member/user/mainViewForm";
	}
//	유저 회원가입 공통페이지
	@RequestMapping(value = "signUpForm")
	public String signUp() throws Exception {
		
		  return "infra/member/user/signUpForm";
	}
	@RequestMapping(value = "signUpInst")
	public String signUpInst(Member dto) throws Exception {
		
		int signUpInst = service.insertCd(dto);
		
		return "infra/member/user/signUpActor";
	}	
	
	
//	유저회원가입 배우페이지
	@RequestMapping(value = "signUpActorForm")
	public String signUpActor() throws Exception {
		return "infra/member/user/signUpActor";
	}
	
//	유저회원가입 감독페이지
	@RequestMapping(value = "signUpDirectorForm")
	public String signUpDirector() throws Exception {
		return "infra/member/user/signUpDirector";
	}
	
	@RequestMapping(value = "signUpDirectorInst")
	public String signUpDirectorInst(Member dto) throws Exception {
		
		int signUpDirectorInst = service.insertCd(dto);
		System.out.println("signUpDirectorInst : " + signUpDirectorInst);
//		
//		Member signUpDirectorInst1 = service.logInCd(dto);
//		redirectAttributes.addFlashAttribute("vo", vo);
//		
//		httpSession.setMaxInactiveInterval(60 * 30); // 60second * 30 = 30minute
//		httpSession.setAttribute("sessSeq", signUpDirectorInst1.getSeq());
//		httpSession.setAttribute("sessId", signUpDirectorInst1.getId());
//		httpSession.setAttribute("sessName", signUpDirectorInst1.getName());
//		httpSession.setAttribute("sessAdmin", signUpDirectorInst1.getAdminNy());
//		
		return "infra/member/user/mainViewForm";
	}
	
//------------------------------------------------------------------------------------- 화면구현
	
	//초기페이지
	@RequestMapping(value = "mainIndex")
	public String inDex() throws Exception {
		
		return "infra/member/user/mainIndex";
	}
	//메인페이지
	@RequestMapping(value = "mainHome")
	public String mainPage() throws Exception {
		
		return "infra/member/user/mainViewForm";
	}

	//메인페이지
		@RequestMapping(value = "/member/tourPostViewForm")
		public String tourPostViewForm() throws Exception {
			
		return "infra/member/user/tourPostViewForm";
	}
	
	//메인페이지
	@RequestMapping(value = "oditionPostViewForm")
	public String oditionMod() throws Exception {
		
		return "infra/member/user/oditionPostViewForm";
	}	
	//메인페이지
		@RequestMapping(value = "actorPostViewForm")
		public String actorPostViewForm() throws Exception {
			
		return "infra/member/user/actorPostViewForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
