package com.actorfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value ="CodeList")
	public String CodeList(Model model, CodeVo vo) throws Exception {
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("vo", vo);
		
		return "infra/codegroup/xdmin/codeList";
		
	}
	
	@RequestMapping(value ="codeForm")
	public String CodeName(Model model) throws Exception {
		
		List<Code> add = service.addCodeName();
		model.addAttribute("add", add);
		
		return "infra/codegroup/xdmin/codeForm";
		
	}
	
//-----------------------------------------페이지이동
	
//	 @RequestMapping(value = "codeForm") 
//	 public String codeGroupForm(Model model) throws Exception {
//	 
//	 return "infra/codegroup/xdmin/codeForm"; 
//	 }
	 
	 
	
	
//	@RequestMapping(value = "codeForm")
//	public String codeGroupForm(Model model) throws Exception {
//		
//		List<Code> add = service.selectList();
//		model.addAttribute("list", add);
//		
//		return "infra/codegroup/xdmin/codeForm";
//	}
//	

	
	
}
