package com.actorfw.infra.modules.xactorpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/Post/")
public class ActorPostController {

	@Autowired
	ActorPostServiceImpl service;
	
//--------------------------------------------------------------------------------
	
	@RequestMapping(value = "ActorPostList")
	public String oditionList(ActorPostVo vo, Model model, ActorPost dto) throws Exception {
		System.out.println("---------List");
		List<ActorPost> list = service.actorList(vo);
		model.addAttribute("list", list);
		
//		System.out.println("----------------------picture");
//		dto.setPseq(vo.getSeq());
//		List<ActorPost> imageViwe = service.imageViwe(dto);
//		model.addAttribute("img", imageViwe);
		
		
		return "infra/member/user/actorPostList";
	}
	
		
		
		
		
	
}
