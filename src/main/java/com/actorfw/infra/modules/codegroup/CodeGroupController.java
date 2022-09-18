package com.actorfw.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	public void setParamsPaging(CodeGroupVo vo) throws Exception {
		
//		검색 초기값 설정
//		vo.setShUseOption(vo.getShUseOption() == null ? 0 : vo.getShUseOption());
//		vo.setShDelOption(vo.getShDelOption() == null ? 0 : vo.getShDelOption());
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
//		페이징
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	
	//코드그룹리스트 페이지
	@RequestMapping(value = "codeGroupList")
	public String codeGroupListPage(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		
		setParamsPaging(vo);
		
		
		System.out.println(vo.getStartRnumForMysql());
		System.out.println(vo.getThisPage());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
//		model.addAttribute("vo", vo);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model, CodeGroupVo vo) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
//	코드그룹폼 페이지
	@RequestMapping(value = "codeGroupForm")		
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("item Controller" + item);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	//데이터 삽입 컨트롤
	@RequestMapping(value = "codeGroupInst")				
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int inst = service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("controller result" + inst);

		return "redirect:/codeGroup/codeGroupForm";
	}
	
//	업데이트
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update1(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	delNy삭제
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
//	완전삭제
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	
	
//-----------------------------------------페이지 이동 컨트롤
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	 * @RequestMapping(value = "codeGroupListsrc") public String
	 * codeGroupListPagesrc(Model model, CodeGroupVo vo) throws Exception {
	 * 
	 * System.out.println("vo.getshValue(): " + vo.getShValue());
	 * System.out.println("vo.getShOption(): " + vo.getShOption());
	 * 
	 * 
	 * List<CodeGroup> list = service.searchList(vo); 
	 * model.addAttribute("list", * list);
	 * 
	 * return "infra/codegroup/xdmin/codeGroupList"; }
	 */
	
}
