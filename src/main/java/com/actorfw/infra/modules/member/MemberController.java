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

import com.actorfw.infra.modules.xactorpost.ActorPostVo;
import com.actorfw.infra.modules.xtourpost.TourPostVo;

@Controller
@RequestMapping (value = "/member/")
public class MemberController {
	
    @Autowired
    MemberServiceImpl service;
	
	
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
		
		List<Member> actorList = service.listFromCategory(26);
        model.addAttribute("actorList", actorList);
        
        List<Member> directorList = service.listFromCategory(27);
        model.addAttribute("directorList", directorList);
		System.out.println("Controll List :" + list);
		
		return "infra/member/xdmin/memberList";
	}
	

//---------------------------------------------------------------------------------------------------------------	

//	관리자화면 회원폼
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		dto.setPseq(Integer.parseInt(vo.getSeq()));// 
		Member imageMainView = service.imageMainView(dto);
		model.addAttribute("imageMainView", imageMainView);
		
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
		
		redirectAttributes.addFlashAttribute("vo", vo);
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
		//sns
	    for(int i = 0; i< dto.getSns_types().length ; i ++) {
	        System.out.println("sns1 : " + dto.getSns_types());
	       
	        dto.setUrl(dto.getUrls()[i]);
            dto.setSns_type(dto.getSns_types()[i]);
                      
            service.insertSnsCd(dto);
        }
	    //filmo
	    for(int i = 0; i < dto.getFilmo_names().length; i++) {
	        
	        dto.setFilmo_period(dto.getFilmo_periods()[i]);
	        dto.setFilmo_type(dto.getFilmo_types()[i]);
	        dto.setFilmo_producer(dto.getFilmo_producers()[i]);
	        dto.setFilmo_name(dto.getFilmo_names()[i]);
	        dto.setFilmo_role(dto.getFilmo_roles()[i]);
	        
	        service.insertFilmoCd(dto);
	    }
	    //edu
        for(int i = 0; i < dto.getEdu_periods_s().length; i++) {
            
            dto.setEdu_period_s(dto.getEdu_periods_s()[i]);
            dto.setEdu_period_e(dto.getEdu_periods_e()[i]);
            dto.setSchool_name(dto.getSchool_names()[i]);
            dto.setEdu_major(dto.getEdu_majors()[i]);
            dto.setEdu_type(dto.getEdu_types()[i]);
        
            service.insertEduCd(dto);
        }
        //Award
        for(int i = 0; i < dto.getAward_periods().length; i++) {
            
            dto.setAward_period(dto.getAward_periods()[i]);
            dto.setAward_name(dto.getAward_names()[i]);
            dto.setAward_issuer(dto.getAward_issuers()[i]);
          
            service.insertAwardCd(dto);
        }
        //career
        for(int i = 0; i < dto.getCareer_periods().length; i++) {
            
            dto.setCareer_period(dto.getCareer_periods()[i]);
            dto.setCareer_company_name(dto.getCareer_company_names()[i]);
            dto.setCareer_position(dto.getCareer_positions()[i]);
          
            service.insertCareerCd(dto);
        }

		return "redirect:/member/mainHome";
	}
//	유저회원가입 감독 폼 페이지
	@RequestMapping(value = "signUpDirectorForm")
	public String signUpDirector(Model model) throws Exception {
		return "infra/member/user/signUpDirector";
	}
	// 유저회원가입 감독 가입 페이지
	@RequestMapping(value = "signUpDirectorInst")
	public String signUpDirectorInst(Member dto) throws Exception {
//		기본정보
	    int signUpDirectorInst = service.insertCd(dto);
		System.out.println("signUpDirectorInst : " + signUpDirectorInst);
//		회사정보
		int insertCompanyCd = service.insertCompanyCd(dto);
		System.out.println("insertCompanyCd : " + insertCompanyCd);
//		회사작품정보
		for(int i = 0; i < dto.getCompanyWork_periods_s().length; i++) {
		    
		    dto.setCompanyWork_period_s(dto.getCompanyWork_periods_s()[i]);
		    dto.setCompanyWork_period_e(dto.getCompanyWork_periods_e()[i]);
		    dto.setCompanyWork_type(dto.getCompanyWork_types()[i]);
		    dto.setCompanyWork_name(dto.getCompanyWork_names()[i]);
		    
		    service.insertCompanyWorkCd(dto);
		}
		return "redirect:/member/mainHome";
	}
	
//---------------------------------------------------------------------------------------------------------------	
	// 마이페이지 뷰
	@RequestMapping(value = "Mypage")
    public String myPage(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception {
        
//	    mypage 시퀀스값을 가져오는 코드
	    vo.setSeq((String)httpSession.getAttribute("sessSeq"));
	    //멤버정보 가져오는거 
	    Member item = service.selectOne(vo);
	    model.addAttribute("item", item);
	    //메인프로필이미지정보
	    dto.setPseq(Integer.parseInt(vo.getSeq())); 
        Member imageMainView = service.imageMainView(dto);
        model.addAttribute("imageMainView", imageMainView);
        //서브프로필이미지정보
        List<Member> imageSubView = service.imageSubView(dto);
        model.addAttribute("imageSubView", imageSubView);
//      연기영상
        List<Member> actorVideo = service.actorVideo(dto);
        model.addAttribute("actorVideo", actorVideo);
	    //sns정보 
	    List<Member> snsList = service.selectSnsList(vo);
	    model.addAttribute("snsList", snsList);
        //필모그라피 정보
        List<Member> filmoList = service.selectFilmoList(vo);
        model.addAttribute("filmoList", filmoList);
        //edu정보
        List<Member> eduList = service.selectEduList(vo);
        model.addAttribute("eduList", eduList);
        //award정보
        List<Member> AwardList = service.selectAwardList(vo);
        model.addAttribute("AwardList", AwardList);
	    
        return "infra/member/user/myPageView";
    }
	
	// 마이페이지 폼
	@RequestMapping(value = "MypageForm")
	public String mypageForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception {

//	    mypage 시퀀스값을 가져오는 코드
        vo.setSeq((String)httpSession.getAttribute("sessSeq"));
        //멤버정보 가져오는거 
        Member item = service.selectOne(vo);
        model.addAttribute("item", item);
        //메인프로필이미지정보
        dto.setPseq(Integer.parseInt(vo.getSeq())); 
        Member imageMainView = service.imageMainView(dto);
        model.addAttribute("imageMainView", imageMainView);
        //서브프로필이미지정보
        List<Member> imageSubView = service.imageSubView(dto);
        model.addAttribute("imageSubView", imageSubView);
//      연기영상
        List<Member> actorVideo = service.actorVideo(dto);
        model.addAttribute("actorVideo", actorVideo);
        //sns정보 
        List<Member> snsList = service.selectSnsList(vo);
        model.addAttribute("snsList", snsList);
        //필모그라피 정보
        List<Member> filmoList = service.selectFilmoList(vo);
        model.addAttribute("filmoList", filmoList);
        //edu정보
        List<Member> eduList = service.selectEduList(vo);
        model.addAttribute("eduList", eduList);
        //award정보
        List<Member> AwardList = service.selectAwardList(vo);
        model.addAttribute("AwardList", AwardList);
	    return "infra/member/user/myPageForm";
	}
    
//---------------------------------------------------------------------------------------------------------------   
    @RequestMapping(value = "MypageUpdate")
	public String myPageUpdate(Member dto) throws Exception {
	    
	    int myPageUpdate = service.updateCd(dto);
	    System.out.println("myPageUpdate : " + myPageUpdate);
	    return "redirect:/member/Mypage";
	}
	
//------------------------------------------------------------------------------------- 화면구현
	
	//초기페이지
	@RequestMapping(value = "mainIndex")
	public String inDex() throws Exception {
		
		return "infra/member/user/mainIndex";
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
