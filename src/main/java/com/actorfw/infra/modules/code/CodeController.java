package com.actorfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value ="CodeList")
	public String CodeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		List<Code> list = service.selectList(vo);
		
		System.out.println("검색어 :" + vo.getShValue());
		System.out.println("검색옵션 :" + vo.getShOption());
		
		model.addAttribute("list", list);
//		model.addAttribute("vo", vo);
		
		return "infra/codegroup/xdmin/codeList";
		
	}
	
	@RequestMapping(value = "codeForm")
	public String CodaForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
//		정보를 하나씩 가져올때
		Code result = service.selectOne(vo);
		
		System.out.println("검색어 :" + vo.getShValue());
		System.out.println("검색옵션 :" + vo.getShOption());
		model.addAttribute("item", result);
//		코드그룹이름을 가져올때
		List<Code> add = service.addCodeName(vo);
		model.addAttribute("add", add);
		
		return "infra/codegroup/xdmin/codeForm";
	}
	
	
	@RequestMapping(value = "CodeInst")
	public String CodeInst(Code dto) throws Exception {
		
		int insertCd = service.insertCd(dto);
		System.out.println("Controller insertCd" + insertCd);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "CodeUpdt")
	public String CodeUpdt(Code dto) throws Exception {
		
		int updateCd = service.updateCd(dto);
		System.out.println("Controller updateCd" + updateCd);
		
		return "redirect:/code/codeList";
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
