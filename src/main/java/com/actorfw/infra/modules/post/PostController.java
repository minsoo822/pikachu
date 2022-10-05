package com.actorfw.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value = "tourPostViewList")
	public String tourList(PostVo vo, Model model) throws Exception {
		
		List<Post> list = service.tourList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/user/tourPostList";
	}

	@RequestMapping(value = "oditionPostViewList")
	public String oditionList(PostVo vo, Model model) throws Exception {
		
		List<Post> list = service.oditionList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/user/oditionPostViewForm";
	}

	
//--------------------------------------------------------------------------------
	
	
	
	@RequestMapping(value = "tourPostForm")
	public String tourPost() throws Exception {
		
		
		return "infra/member/user/tourPostForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
