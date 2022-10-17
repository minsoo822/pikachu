package com.actorfw.infra.modules.xtourpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/Post/")
public class TourPostController {
	
	@Autowired
	TourPostServiceImpl service;
	
	public void setParamsPaging(TourPostVo vo) throws Exception {
		
//		검색 초기값 설정
//		vo.setShUseOption(vo.getShUseOption() == null ? 0 : vo.getShUseOption());
//		vo.setShDelOption(vo.getShDelOption() == null ? 0 : vo.getShDelOption());
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
//		페이징
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
//--------------------------------------------------------------------------------

	@RequestMapping(value = "tourPostViewList")
	public String tourList(TourPostVo vo, Model model) throws Exception {

		setParamsPaging(vo);
		
		List<TourPost> list = service.tourList(vo);
		model.addAttribute("list", list);
		return "infra/member/user/tourPostList";
	}
	
	@RequestMapping(value = "tourPostForm")
	public String tourPost() throws Exception {
		return "infra/member/user/tourPostForm";
	}
	
	@RequestMapping(value = "tourPostInst")
	public String insrtTour(TourPostVo vo, TourPost dto, RedirectAttributes redirectAttributes) throws Exception {
		int insrtTour = service.insrtTour(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("insrtTour Control : " + insrtTour);
		
		return "redirect:/Post/tourPostViewList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
