package com.actorfw.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupListPage(Model model, CodeGroupVo vo) throws Exception {

		System.out.println("vo.getshValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupListsrc")
	public String codeGroupListPagesrc(Model model, CodeGroupVo vo) throws Exception {

		System.out.println("vo.getshValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		
		List<CodeGroup> list = service.searchList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	
}
