package com.actorfw.infra.modules.xactorpost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/Post/")
public class ActorPostController {

	@Autowired
	ActorPostServiceImpl service;
	
//--------------------------------------------------------------------------------
	
	public void setParamsPaging(ActorPostVo vo) throws Exception {
	    
	    
	    vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "ActorPostList")
	public String oditionList(@ModelAttribute("vo") ActorPostVo vo, Model model, ActorPost dto) throws Exception {
		
	    setParamsPaging(vo);
	    
		List<ActorPost> list = service.actorList(vo);
		model.addAttribute("list", list);
		
		
		
		return "infra/member/user/actorPostList";
	}
	
	@RequestMapping(value = "ActorView")
	public String actorView(Model model, ActorPostVo vo) throws Exception {
	    
	    ActorPost item = service.selectOne(vo);
	    model.addAttribute("item", item);
	    
	    List<ActorPost> snslist = service.snslist(vo);
	    model.addAttribute("snslist", snslist);
	    
	    List<ActorPost> filmolist = service.filmolist(vo);
        model.addAttribute("filmolist", filmolist);
        
        List<ActorPost> edulist = service.edulists(vo);
        model.addAttribute("edulist", edulist);
        
        List<ActorPost> awardlist = service.awardlist(vo);
        model.addAttribute("awardlist", awardlist);
       
        List<ActorPost> imageSubView = service.imageSubView(vo);
        model.addAttribute("imageSubView", imageSubView);
        
        List<ActorPost> actorVideo = service.actorVideo(vo);
        model.addAttribute("actorVideo", actorVideo);
	    
	    return "infra/member/user/actorView";
	}
		
		
		
		
	
}
