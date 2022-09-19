package com.actorfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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

}
