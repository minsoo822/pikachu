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
       
        int memberCount = service.memberCount(vo);
        model.addAttribute("memberCount", memberCount);
        int man = service.manCount();
        model.addAttribute("man", man);
        int woman = service.womanCount();
        model.addAttribute("woman", woman);
//-----------------------------------------------------------        
        int postCount = service.postCount(vo);
        model.addAttribute("postCount", postCount);
        int movieCount = service.movieCount();
        model.addAttribute("movieCount", movieCount);
        int shortCount = service.shortCount();
        model.addAttribute("shortCount", shortCount);
        int dramaCount = service.dramaCount();
        model.addAttribute("dramaCount", dramaCount);
        int wepCount = service.wepCount();
        model.addAttribute("wepCount", wepCount);
        int cfCount = service.cfCount();
        model.addAttribute("cfCount", cfCount);
        int viCount = service.viCount();
        model.addAttribute("viCount", viCount);
//-----------------------------------------------------------      
        List<Home> oditionList = service.oditionList(vo);
        model.addAttribute("oditionList", oditionList);
        
        List<Home> memberList = service.memberList(vo);
        model.addAttribute("memberList", memberList);
        
        return "infra/member/user/mainViewForm";
    }

    
    
    
    
}
