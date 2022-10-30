package com.actorfw.infra.modules.xoditionpost;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/Post/")
public class OditionPostController {

	@Autowired
	OditionPostServiceImpl service;

	   public void setParamsPaging(OditionPostVo vo) throws Exception {
	        
//	      검색 초기값 설정
//	      vo.setShUseOption(vo.getShUseOption() == null ? 0 : vo.getShUseOption());
//	      vo.setShDelOption(vo.getShDelOption() == null ? 0 : vo.getShDelOption());
//	      vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//	      vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//	      vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	        
//	      페이징
	        vo.setParamsPaging(service.selectOneCount(vo));
	    }
	
	
//--------------------------------------------------------------------------------
	
		@RequestMapping(value = "oditionPostViewList")
		public String oditionList(OditionPost dto, @ModelAttribute("vo") OditionPostVo vo, Model model) throws Exception {
			
		    setParamsPaging(vo);
//		    dto.setMember_seq(vo.getSeq());
			List<OditionPost> list = service.oditionList(vo);
			model.addAttribute("list", list);
			
			return "infra/member/user/oditionPostViewForm";
		}
		
		@RequestMapping(value = "oditionPostForm")
		public String oditionList() throws Exception {
			
			return "infra/member/user/oditionPostModForm";
		}
		
		@RequestMapping(value = "oditionInst")
		public String insrtOdition(OditionPostVo vo, OditionPost dto, RedirectAttributes redirectAttributes) throws Exception {
			int insrtOdition = service.insrtOdition(dto);
			redirectAttributes.addFlashAttribute("vo", vo);
			System.out.println("insrtTour Control : " + insrtOdition);
			
			return "redirect:/Post/oditionPostViewList";
		}

        /* 오디션게시물 뷰 */
		@RequestMapping(value = "oditionPostView")
        public String oditionPostView(@ModelAttribute("vo") OditionPostVo vo, Model model) throws Exception {
            
		    OditionPost item = service.oditionView(vo);
		    model.addAttribute("item", item);
            
            /* 댓글 */
            List<OditionPost> postComentList = service.postComentList(vo);
            model.addAttribute("postComentList", postComentList);
            
            return "infra/member/user/oditionPostView";
        }
		
		@ResponseBody
		@RequestMapping(value = "oditionPostComentInst")
        public Map<String, Object> insertComent(OditionPost dto) throws Exception {
            		    
            Map<String, Object> result = new HashMap<String, Object>();
            
		    int comentInst = service.insertComnt(dto);

		    OditionPost comentItem = service.comentOne(dto);
		    //dto에 담긴 member_seq 댓글작성자 닉네임, 프로필이미지를 join
		    result.put("img", comentItem.getPath() + comentItem.getUuidName());
		    result.put("writer", comentItem.getWriter());
		    result.put("comment", dto.getContents());
            //path  uuid  nickname 
		    
            return result;
        }
	
	
}
