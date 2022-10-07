package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/Post/")
public class OditionPostController {

	@Autowired
	OditionPostServiceImpl service;
	
//--------------------------------------------------------------------------------
	
		@RequestMapping(value = "oditionPostViewList")
		public String oditionList(OditionPostVo vo, Model model) throws Exception {
			
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
