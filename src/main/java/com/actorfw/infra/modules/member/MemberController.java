package com.actorfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/memBer/")
public class MemberController {

	

	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "memBerList")
	public String MemberListPage(Model model) throws Exception {

		List<Member> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/memberGroupList";
	}
	
	@RequestMapping(value = "memBerListSrc")
	public String MemberListSrcPage(Model model, MemberVo vo) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<Member> list = service.searchList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/memberGroupList";
	}
	
	
	
}
