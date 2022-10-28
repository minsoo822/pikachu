package com.actorfw.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/home/")
public class HomevController {
    
    @Autowired
    HomeServiceImpl service;
    
    @RequestMapping(value = "Home")
    public String oditionList(@ModelAttribute("vo") HomeVo vo  , Model model) throws Exception {
        List<Home> oditionList = service.oditionList(vo);
        model.addAttribute("oditionList", oditionList);
        
        List<Home> memberList = service.memberList(vo);
        model.addAttribute("memberList", memberList);
        System.out.println("투어리스트2");
        List<Home> tourList = service.tourList(vo);
        System.out.println("투어리스트1");
        model.addAttribute("tourList", tourList);
        
        return "infra/member/user/mainViewForm";
    }

    
    
    
    
}
