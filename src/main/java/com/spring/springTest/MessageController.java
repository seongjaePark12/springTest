package com.spring.springTest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MessageController {
	
	@RequestMapping(value="/msg/{msgFlag}", method = RequestMethod.GET)
	public String msgGet(@PathVariable String msgFlag, Model model) {
		
		if(msgFlag.equals("userInputOk")) {
			model.addAttribute("msg","신규 유저가 등록되었습니다");
			model.addAttribute("url","/user/userList");
		}
//		else if(msgFlag.equals("userUpdateOk")) {
//			model.addAttribute("msg","유저 정보가 변경되었습니다");
//			model.addAttribute("url","/user/userList");
//		}
//		else if(msgFlag.equals("userPwdCheckNo")) {
//			model.addAttribute("msg","비밀번호가 다릅니다");
//			model.addAttribute("url","/user/userList");
//		}
		else if(msgFlag.equals("userDeleteOk")) {
			model.addAttribute("msg","삭제되었습니다");
			model.addAttribute("url","/user/userList");
		}
		
		
		
		else if(msgFlag.substring(0,12).equals("userUpdateOk")) {
			model.addAttribute("msg","유저 정보가 변경되었습니다");
			model.addAttribute("url","/user/userUpdate?"+msgFlag.substring(13));
		}
		else if(msgFlag.substring(0,14).equals("userPwdCheckNo")) {
			model.addAttribute("msg","비밀번호가 다릅니다");
			model.addAttribute("url","/user/userPwdCheck?"+msgFlag.substring(15));
		}
		
		
		return "include/message";
	}
	
}
