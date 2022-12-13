package com.actorfw.infra.modules.chat;
//본인에게 맞는 package로 변경하도록 합니다.

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/chat/")
public class ChatController {
    
    @Autowired
    ChatServiceImpl service;

    @RequestMapping(value="")
    public String chat(HttpSession httpSession,Model model) throws Exception {
        
        List<Chat> list = service.selectChatListFromOne(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()));
        //캐스팅 오류나면 Integer.ParseInt(httpSession.getAttribute("sessSeq").toString())
        model.addAttribute("list", list);
        
        return "infra/chat/user/chat";
        //본인에게 맞는 jsp경로로 변경하도록 합니다.
    }

   
     @ResponseBody
     @RequestMapping(value="insChat")
     public Map<String,Object> insChat(HttpSession httpSession,Chat dto) throws
     Exception {
     
     Map<String,Object> result = new HashMap<String,Object>();
     
     Chat newChat =
     service.createChat(Integer.parseInt(httpSession.getAttribute("sessSeq").
     toString()),dto.getCuMember());
     //캐스팅 오류나면 Integer.ParseInt(httpSession.getAttribute("sessSeq").toString())
     if(newChat != null) {
     result.put("rt", "success");
     result.put("newChat", newChat);
     }
     else
     result.put("rt", "fail");
     
     return result;
     }
    
    @RequestMapping(value="instChat")
    public String instChat(HttpSession httpSession,Chat dto,Model model) throws Exception {
        
        List<Chat> list = service.selectChatListFromOne(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()));
        model.addAttribute("list", list);
        
        //기존 채팅방이 존재하지 않을때만 채팅방 생성
        int Count = service.selectCountChat(dto); 
        if(Count == 0 ) {
            service.createChat(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()),dto.getCuMember());
        }
         
        
        return "infra/chat/user/chat";
    }

}

