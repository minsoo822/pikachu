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
	public String CodeList(Model model) throws Exception {
		
		List<Code> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeList";
		
	}
	
	@RequestMapping(value = "codeForm")
	public String codeGroupForm() throws Exception {
		
		return "infra/codegroup/xdmin/codeForm";
	}
	
	
}
