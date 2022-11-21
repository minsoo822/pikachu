package com.actorfw.infra.modules.chat;
//본인에게 맞는 package로 변경하도록 합니다.

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/chat/")
public class ChatController {
    
    @Autowired
    ChatServiceImpl service;

    @RequestMapping(value="")
    public String chat(HttpSession httpSession,Model model) throws Exception {
        
        List<Chat> list = service.selectChatListFromOne((int)httpSession.getAttribute("sessSeq"));
        
        model.addAttribute("list", list);
        
        return "infra/chat/user/chat";
        //본인에게 맞는 jsp경로로 변경하도록 합니다.
    }
}