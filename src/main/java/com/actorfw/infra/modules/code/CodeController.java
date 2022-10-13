package com.actorfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	public void setParamsPaging(CodeVo vo) throws Exception {
		
//		검색 초기값 설정
//		vo.setShUseOption(vo.getShUseOption() == null ? 0 : vo.getShUseOption());
//		vo.setShDelOption(vo.getShDelOption() == null ? 0 : vo.getShDelOption());
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
//		페이징
		vo.setParamsPaging(service.selectOneCount(vo));
	}

//----------------------------------------------------------------------------------------------------------------------------
	
	@RequestMapping(value ="CodeList")
	public String CodeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		setParamsPaging(vo);
		
		List<Code> list = service.selectList(vo);
		System.out.println("검색어 :" + vo.getShValue());
		System.out.println("검색옵션 :" + vo.getShOption());
		model.addAttribute("list", list);
//		model.addAttribute("vo", vo);
		return "infra/code/xdmin/codeList";
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
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "CodeInst")
	public String CodeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		int insertCd = service.insertCd(dto);
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("Controller insertCd" + insertCd);
		return "redirect:/code/CodeList";
	}
	
	@RequestMapping(value = "CodeUpdt")
	public String CodeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("들어와");
		int updateCd = service.updateCd(dto);
		Code result = service.selectOne(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("Controller updateCd" + updateCd);
		
		return "redirect:/code/CodeList";
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
