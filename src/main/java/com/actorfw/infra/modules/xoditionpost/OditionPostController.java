package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/Post/")
public class OditionPostController {

	@Autowired
	OditionPostServiceImpl service;

	   public void setParamsPaging(OditionPostVo vo) throws Exception {
	        
//	      검색 초기값 설정
//	      vo.setShUseOption(vo.getShUseOption() == null ? 0 : vo.getShUseOption());
//	      vo.setShDelOption(vo.getShDelOption() == null ? 0 : vo.getShDelOption());
//	      vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//	      vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//	      vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	        
//	      페이징
	        vo.setParamsPaging(service.selectOneCount(vo));
	    }
	
	
//--------------------------------------------------------------------------------
	
		@RequestMapping(value = "oditionPostViewList")
		public String oditionList(OditionPost dto, @ModelAttribute("vo") OditionPostVo vo, Model model) throws Exception {
			
		    setParamsPaging(vo);
//		    dto.setMember_seq(vo.getSeq());
			List<OditionPost> list = service.oditionList(vo);
			model.addAttribute("list", list);
			
			return "infra/member/user/oditionPostViewForm";
		}
		
		@RequestMapping(value = "oditionPostForm")
		public String oditionList() throws Exception {
			
			return "infra/member/user/oditionPostModForm";
		}
		
		@RequestMapping(value = "oditionInst")
		public String insrtOdition(OditionPostVo vo, OditionPost dto, RedirectAttributes redirectAttributes) throws Exception {
			int insrtOdition = service.insrtOdition(dto);
			redirectAttributes.addFlashAttribute("vo", vo);
			System.out.println("insrtTour Control : " + insrtOdition);
			
			return "redirect:/Post/oditionPostViewList";
		}
		
	
	
}
