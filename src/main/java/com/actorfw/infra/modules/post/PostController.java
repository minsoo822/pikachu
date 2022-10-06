package com.actorfw.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/Post/")
public class PostController {
	
	@Autowired
	PostServiceImpl service;
	
	//메인페이지
	@RequestMapping(value = "mainHome")
	public String mainPage(PostVo vo, Model model) throws Exception {
		
		List<Post> list = service.tourList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/user/mainViewForm";
	}
	
//--------------------------------------------------------------------------------
	
	@RequestMapping(value = "oditionPostViewList")
	public String oditionList(PostVo vo, Model model) throws Exception {
		
		List<Post> list = service.oditionList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/user/oditionPostViewForm";
	}
	
	@RequestMapping(value = "oditionPostForm")
	public String oditionList() throws Exception {
		
		return "infra/member/user/oditionPostModForm";
	}
	
	@RequestMapping(value = "oditionInst")
	public String insrtOdition(PostVo vo, Post dto, RedirectAttributes redirectAttributes) throws Exception {
		int insrtOdition = service.insrtOdition(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("insrtTour Control : " + insrtOdition);
		
		return "redirect:/Post/oditionPostViewList";
	}
	
//--------------------------------------------------------------------------------

	@RequestMapping(value = "tourPostViewList")
	public String tourList(PostVo vo, Model model) throws Exception {
		
		List<Post> list = service.tourList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/user/tourPostList";
	}
	@RequestMapping(value = "tourPostForm")
	public String tourPost() throws Exception {
		
		
		return "infra/member/user/tourPostForm";
	}
	
	@RequestMapping(value = "tourPostInst")
	public String insrtTour(PostVo vo, Post dto, RedirectAttributes redirectAttributes) throws Exception {
		int insrtTour = service.insrtTour(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("insrtTour Control : " + insrtTour);
		
		return "redirect:/Post/tourPostViewList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
