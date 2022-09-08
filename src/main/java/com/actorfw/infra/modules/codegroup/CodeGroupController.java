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

		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("vo", vo);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupInst")							//데이터 넣는 컨트롤
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		 int result = service.insert(dto);
		System.out.println("controller result" + result);

		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model, CodeGroupVo vo) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
//-----------------------------------------페이지 이동 컨트롤
	
	
	@RequestMapping(value = "codeGroupForm")			//코드그룹폼 페이지
	public String codeGroupForm() throws Exception {
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
