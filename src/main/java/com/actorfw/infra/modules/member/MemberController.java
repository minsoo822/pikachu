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

import com.actorfw.infra.modules.xactorpost.ActorPostServiceImpl;
import com.actorfw.infra.modules.xtourpost.TourPost;
import com.actorfw.infra.modules.xtourpost.TourPostServiceImpl;
import com.actorfw.infra.modules.xtourpost.TourPostVo;

@Controller
@RequestMapping (value = "/member/")
public class MemberController {
	
    @Autowired
    MemberServiceImpl service;
    	
    @Autowired
    TourPostServiceImpl Tourservice;
    	
    @Autowired
    ActorPostServiceImpl Actorservice;
	
	
	public void setParamsPaging(MemberVo vo) throws Exception {
		
//		검색 초기값 설정
//		vo.setShUseOption(vo.getShUseOption() == null ? 0 : vo.getShUseOption());
//		vo.setShDelOption(vo.getShDelOption() == null ? 0 : vo.getShDelOption());
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
//		페이징
		vo.setParamsPaging(service.selectOneCount(vo));
	}
//---------------------------------------------------------------------------------------------------------------	
//	전체회원
//	관리자화면 회원리스트
	@RequestMapping(value = "memberList")
	public String selectList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		setParamsPaging(vo);
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		System.out.println("Controll List :" + list);
		return "infra/member/xdmin/memberList";
	}
//	배우회원
//	관리자화면 배우리스트
	@RequestMapping(value = "actorList")
	public String actorList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		setParamsPaging(vo);
		List<Member> list = service.actorList(vo);
		model.addAttribute("list", list);
		System.out.println("Controll List :" + list);
		return "infra/member/xdmin/memberList";
	}
//	감독회원
//	관리자화면 감독리스트
	@RequestMapping(value = "directorList")
	public String directorList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		setParamsPaging(vo);
		List<Member> list = service.directorList(vo);
		model.addAttribute("list", list);
		System.out.println("Controll List :" + list);
		return "infra/member/xdmin/memberList";
	}

//---------------------------------------------------------------------------------------------------------------	
	
//	관리자화면 회원폼
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("Controll Form :" + item);
		
		dto.setPseq(vo.getSeq());// 
		Member imageView = service.imageView(dto);
		model.addAttribute("imageView", imageView);
		
		return "infra/member/xdmin/memberForm";
	}
//	관리자화면 회원가입
	@RequestMapping(value = "memberInst")
	public String isertCd(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int insertCd = service.insertCd(dto);
		System.out.println("Controller Inst :" + insertCd);
		
		redirectAttributes.addFlashAttribute("vo", vo);
//		System.out.println("dto.getMultipartFile() : " + dto.getMultipartFile().length);
		return "redirect:/member/memberList";
	}
//	관리자화면 회원수정
	@RequestMapping(value = "memberUpdt")
	public String updateCd(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int updateCd = service.updateCd(dto);
		
		System.out.println();
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("주소나와라 : " + updateCd);
		return "redirect:/member/memberList";
	}
//---------------------------------------------------------------------------------------------------------------	
	
//	아이디 중복확인
	@ResponseBody
	@RequestMapping(value = "idCheck")
	public Map<String, Object> checkId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.idCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
//	로그인폼
	@RequestMapping(value = "loginForm")
	public String loginForm(Member dto) throws Exception {
		Member loginForm = service.logInCd(dto);
		System.out.println("loginForm : " + loginForm);
		return "infra/member/user/loginForm";
	}
//	아이디 비밀번호체크
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
//	@RequestMapping(value = "signUpForm")
//	public String signUp() throws Exception {
//		
//		  return "infra/member/user/signUpForm";
//	}
//	@RequestMapping(value = "signUpInst")
//	public String signUpInst(Member dto) throws Exception {
//		
//		int signUpInst = service.insertCd(dto);
//		
//		return "infra/member/user/signUpActor";
//	}	
//-------------------------------------------------------------------------------------------	
	
//	유저회원가입 배우페이지
	@RequestMapping(value = "signUpActorForm")
	public String signUpActor(Model model) throws Exception {
		return "infra/member/user/signUpActor";
	}
	
//	유저회원가입 배우페이지
	@RequestMapping(value = "signUpActorInst")
	public String signUpActorInst(Member dto) throws Exception {
		
		//기본정보
		int signUpActorInst = service.insertCd(dto);
		System.out.println("signUpActorInst : " + signUpActorInst);
		//sns
	    int insertSnsCd = service.insertSnsCd(dto);
	    System.out.println("insertSnsCd : " + insertSnsCd);
	    //filmo
	    int insertFilmoCd = service.insertFilmoCd(dto);
	    System.out.println("insertFilmoCd : " + insertFilmoCd);
	  //filmo
        int insertEduCd = service.insertEduCd(dto);
        System.out.println("insertEduCd : " + insertEduCd);
      //filmo
        int insertAwardCd = service.insertAwardCd(dto);
        System.out.println("insertAwardCd : " + insertAwardCd);
      //filmo
        int insertCareerCd = service.insertCareerCd(dto);
        System.out.println("insertCareerCd : " + insertCareerCd);
        
		
		return "redirect:/member/mainHome";
	}
	
//	유저회원가입 감독페이지
	@RequestMapping(value = "signUpDirectorForm")
	public String signUpDirector(Model model) throws Exception {
		return "infra/member/user/signUpDirector";
	}
	
	@RequestMapping(value = "signUpDirectorInst")
	public String signUpDirectorInst(Member dto) throws Exception {
		System.out.println("dto : " + dto);
		int signUpDirectorInst = service.insertCd(dto);
		System.out.println("signUpDirectorInst : " + signUpDirectorInst);
		
		
		return "redirect:/member/mainHome";
	}
	
//------------------------------------------------------------------------------------- 화면구현
	
	//초기페이지
	@RequestMapping(value = "mainIndex")
	public String inDex() throws Exception {
		
		return "infra/member/user/mainIndex";
	}
	//메인페이지
	@RequestMapping(value = "mainHome")
	public String mainPage(Model model, TourPostVo vo) throws Exception {
//		
	   
	    List<TourPost> tourList = Tourservice.tourList(vo);
        model.addAttribute("tourList", tourList);
	    System.out.println("tourList : " + tourList);
//	    List<ActorPost> actorList = Actorservice.actorList(vo);

//		List<ActorPost> actorlist = Actorservice.actorList(vo);
		
		return "infra/member/user/mainViewForm";
	}
	//오디션포스트 리스트
	@RequestMapping(value = "oditionPostViewForm")
	public String oditionMod() throws Exception {
		
		return "infra/member/user/oditionPostViewForm";
	}	
	//배우포스트 리스트
		@RequestMapping(value = "actorPostViewForm")
		public String actorPostViewForm() throws Exception {
			
		return "infra/member/user/actorPostViewForm";
	}
		
	@RequestMapping(value = "firstView")
	public String firstView() throws Exception {
		
		return "infra/member/xdmin/firstView";
		
	}
	
	
}
