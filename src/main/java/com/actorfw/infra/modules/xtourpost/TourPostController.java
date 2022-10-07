package com.actorfw.infra.modules.xtourpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/Post/")
public class TourPostController {
	
	@Autowired
	TourPostServiceImpl service;
	
	//메인페이지
	@RequestMapping(value = "mainHome")
	public String mainPage(TourPostVo vo, Model model) throws Exception {
		
		List<TourPost> list = service.tourList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/user/mainViewForm";
	}
	

//--------------------------------------------------------------------------------

	@RequestMapping(value = "tourPostViewList")
	public String tourList(TourPostVo vo, Model model) throws Exception {
		
		List<TourPost> list = service.tourList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/user/tourPostList";
	}
	@RequestMapping(value = "tourPostForm")
	public String tourPost() throws Exception {
		
		
		return "infra/member/user/tourPostForm";
	}
	
	@RequestMapping(value = "tourPostInst")
	public String insrtTour(TourPostVo vo, TourPost dto, RedirectAttributes redirectAttributes) throws Exception {
		int insrtTour = service.insrtTour(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("insrtTour Control : " + insrtTour);
		
		return "redirect:/Post/tourPostViewList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
