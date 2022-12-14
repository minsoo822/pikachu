package com.actorfw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.actorfw.infra.common.constants.Constants;
import com.actorfw.infra.common.util.UtilDateTime;
import com.actorfw.infra.modules.code.CodeServiceImpl;

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
//	엑셀 다운로드
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
        
//        setSearch(vo);
        vo.setParamsPaging(service.selectOneCount(vo));

        if (vo.getTotalRows() > 0) {
            List<Member> list = service.selectList(vo);
            
//          Workbook workbook = new HSSFWorkbook(); // for xls
            Workbook workbook = new XSSFWorkbook();
            Sheet sheet = workbook.createSheet("Sheet1");
            CellStyle cellStyle = workbook.createCellStyle();        
            Row row = null;
            Cell cell = null;
            int rowNum = 0;
            
//          each column width setting           
            sheet.setColumnWidth(0, 2100);
            sheet.setColumnWidth(1, 3100);

//          Header
            String[] tableHeader = {"Seq", "회원타입", "아이디", "이름", "성별", "이메일", "모바일", "등록일", "나이"};

            row = sheet.createRow(rowNum++);
            
            for(int i=0; i<tableHeader.length; i++) {
                cell = row.createCell(i);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(tableHeader[i]);
            }

//          Body
            for (int i=0; i<list.size(); i++) {
                row = sheet.createRow(rowNum++);
                
//              String type: null 전달 되어도 ok
//              int, date type: null 시 오류 발생 하므로 null check
//              String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅               
                
                cell = row.createCell(0);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
                
                cell = row.createCell(1);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
//                cell.setCellValue(list.get(i).getUser_type());
                if(list.get(i).getUser_type() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(""+list.get(i).getUser_type()));
                
                cell = row.createCell(2);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(list.get(i).getId());
                
                cell = row.createCell(3);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(list.get(i).getName());
                
                cell = row.createCell(4);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                if(list.get(i).getGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(""+list.get(i).getGender()));
                
                cell = row.createCell(5);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(list.get(i).getEmail());
                
                cell = row.createCell(6);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                cell.setCellValue(list.get(i).getPhone_number());

                cell = row.createCell(7);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                if(list.get(i).getCreDate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getCreDate()));
                
                cell = row.createCell(8);
                cellStyle.setAlignment(HorizontalAlignment.CENTER);
                cell.setCellStyle(cellStyle);
                if(list.get(i).getAge() == null) cell.setCellValue("");
            }

            httpServletResponse.setContentType("ms-vnd/excel");
//          httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");    // for xls
            httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

            workbook.write(httpServletResponse.getOutputStream());
            workbook.close();
        }
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
		return "infra/member/user/loginForm";
	}
	@ResponseBody
    @RequestMapping(value = "kakaoLoginProc")
    public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>(); 
        
        String txt = dto.getId();
        String[] split = txt.split("@");
        dto.setId(split[0]);
        
        Member kakaoLogin = service.snsLogincheck(dto);
        
//         System.out.println("test : " + dto.getToken());
        
        if (kakaoLogin == null) {
            service.kakaoInst(dto);    
            
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            // session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
            returnMap.put("rt", "success");
        } else {
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            
            // session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
            session(kakaoLogin, httpSession);
            returnMap.put("rt", "success");
        }
        return returnMap;
    }
	@ResponseBody
    @RequestMapping(value = "naverLoginProc")
    public Map<String, Object> naverLoginProc(Member dto, HttpSession httpSession) throws Exception {
        Map<String, Object> returnMap = new HashMap<String, Object>();
        
        Member naverLogin = service.snsLogincheck(dto);
        
        if (naverLogin == null) {
            service.naverInst(dto);
            
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            // session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
            returnMap.put("rt", "success");
        } else {
            httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            
            // session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
            session(naverLogin, httpSession);
            returnMap.put("rt", "success");
        }
        return returnMap;
    }
	public void session(Member dto, HttpSession httpSession) {
	    httpSession.setAttribute("sessSeq", dto.getSeq());    
	    httpSession.setAttribute("sessId", dto.getId());
	    httpSession.setAttribute("sessName", dto.getName());
	    httpSession.setAttribute("sessEmail", dto.getEmail());
	}

//	아이디 비밀번호체크
	@ResponseBody
	@RequestMapping(value = "loginCheck")
	public Map<String, Object> logInCd(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member logInCd = service.logInCd(dto);
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
		
		return "redirect:/home/Home";
	}
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

		return "redirect:/home/Home";
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
		return "redirect:/home/Home";
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
	
    @RequestMapping(value = "MypageUpdate")
    public String myPageUpdate(Member dto) throws Exception {
        
        int myPageUpdate = service.updateCd(dto);
//      SnsInst추가라인
        if(dto.getSns_types() != null && dto.getSns_types().length > 0 ) {
            
            for(int i = 0; i< dto.getSns_types().length ; i ++) {
                dto.setUrl(dto.getUrls()[i]);
                dto.setSns_type(dto.getSns_types()[i]);
                
                service.insertSnsCd(dto);
            }
        } 
//      sns업데이트
        if(dto.getUpsns_types() != null && dto.getUpsns_types().length > 0) {
            
            for(int i=0; i< dto.getUpsns_types().length; i++) {
                dto.setSnsSeq(dto.getSnsSeqs()[i]);
                dto.setUpurl(dto.getUpurls()[i]);
                dto.setUpsns_type(dto.getUpsns_types()[i]);
                
                service.updateSnsCd(dto);
            }
        }
//      filmo업데이트
        if(dto.getUpfilmo_types() != null && dto.getUpfilmo_types().length > 0) {
            
            for(int i=0; i< dto.getUpfilmo_types().length; i++) {
                dto.setFilmoSeq(dto.getFilmoSeqs()[i]);
                dto.setUpfilmo_period(dto.getUpfilmo_periods()[i]);
                dto.setUpfilmo_type(dto.getUpfilmo_types()[i]);
                dto.setUpfilmo_producer(dto.getUpfilmo_producers()[i]);
                dto.setUpfilmo_name(dto.getUpfilmo_names()[i]);
                dto.setUpfilmo_role(dto.getUpfilmo_roles()[i]);
                
                service.updateFilmoCd(dto);
            }
        }
        //filmoInst추가라인
        if(dto.getFilmo_names() != null && dto.getFilmo_names().length > 0) {
            
            for(int i = 0; i < dto.getFilmo_names().length; i++) {
                dto.setFilmo_period(dto.getFilmo_periods()[i]);
                dto.setFilmo_type(dto.getFilmo_types()[i]);
                dto.setFilmo_producer(dto.getFilmo_producers()[i]);
                dto.setFilmo_name(dto.getFilmo_names()[i]);
                dto.setFilmo_role(dto.getFilmo_roles()[i]);
                
                service.insertFilmoCd(dto);
            }
        }
//      edu업데이트
        if(dto.getUpschool_names() != null && dto.getUpschool_names().length > 0) {
            
            for(int i = 0; i < dto.getUpschool_names().length; i++) {
                dto.setEduSeq(dto.getEduSeqs()[i]);
                dto.setUpedu_period_s(dto.getUpedu_periods_s()[i]);
                dto.setUpedu_period_e(dto.getUpedu_periods_e()[i]);
                dto.setUpschool_name(dto.getUpschool_names()[i]);
                dto.setUpedu_major(dto.getUpedu_majors()[i]);
                dto.setUpedu_type(dto.getUpedu_types()[i]);
                
                service.updateEduCd(dto);
            }
        }
//      eduInst추가라인
        if(dto.getSchool_names() != null && dto.getSchool_names().length > 0 ) {
            
            for(int i = 0; i < dto.getSchool_names().length; i++) {
                dto.setEdu_period_s(dto.getEdu_periods_s()[i]);
                dto.setEdu_period_e(dto.getEdu_periods_e()[i]);
                dto.setSchool_name(dto.getSchool_names()[i]);
                dto.setEdu_major(dto.getEdu_majors()[i]);
                dto.setEdu_type(dto.getEdu_types()[i]);
                
                service.insertEduCd(dto);
            }
        }
//      award업데이트
        if(dto.getUpaward_periods() != null && dto.getUpaward_periods().length > 0) {
            
            for(int i = 0; i < dto.getUpaward_periods().length; i++) {
                dto.setAwardSeq(dto.getAwardSeqs()[i]);
                dto.setUpaward_period(dto.getUpaward_periods()[i]);
                dto.setUpaward_name(dto.getUpaward_names()[i]);
                dto.setUpaward_issuer(dto.getUpaward_issuers()[i]);
                
                service.updateAwardCd(dto);
            }
        }
//      AwardInst추가라인
        if(dto.getAward_periods() != null && dto.getAward_periods().length > 0) {
            
            for(int i = 0; i < dto.getAward_periods().length; i++) {
                dto.setAward_period(dto.getAward_periods()[i]);
                dto.setAward_name(dto.getAward_names()[i]);
                dto.setAward_issuer(dto.getAward_issuers()[i]);
                
                service.insertAwardCd(dto);
            }
        }
        return "redirect:/member/Mypage";
    }
    
    @RequestMapping(value = "mySupport")
    public String mySupport(MemberVo vo, Model model, HttpSession httpSession) throws Exception {
        
        vo.setSeq((String)httpSession.getAttribute("sessSeq"));
        List<Member> supportList = service.supportList(vo);
        model.addAttribute("supportList", supportList);
        
        return "infra/member/user/mySupport";
    }
//------------------------------------------------------------------------------------- 화면구현
	
	//초기페이지
	@RequestMapping(value = "mainIndex")
	public String inDex() throws Exception {
		
		return "infra/member/user/mainIndex";
	}
	@RequestMapping(value = "firstView")
	public String firstView() throws Exception {
		
		return "infra/member/xdmin/firstView";
		
	}
	
	
}
