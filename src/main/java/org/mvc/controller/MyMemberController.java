package org.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mvc.bean.MyMemberDTO;
import org.mvc.service.MyMemberS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@Log4j
@RequestMapping("/mymember/")
public class MyMemberController {
	
	@Autowired
	private MyMemberS service; 
	
	@RequestMapping("main")
	public String main() {
		return "mymember/main";
	}
	
	@RequestMapping("inputForm")
	public String inputForm(MyMemberDTO dto, String pageNum, Model model) {
		model.addAttribute("pageNum",pageNum);
		return "mymember/inputForm";
	}
	
	@RequestMapping("inputPro")
	public  String inputPro(MyMemberDTO dto, String pageNum, Model model, HttpServletRequest req) {
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("result",service.insertMember(dto));
		return "mymember/inputPro";
	}
	
	@RequestMapping("loginForm")
	public String login() {
		return "mymember/loginForm";
	}
	
	@RequestMapping("loginPro")
	public String loginPro(MyMemberDTO dto, HttpSession session) {
		if(service.userCheck(dto) != null) {
			session.setAttribute("memId", dto.getId());
		}
		return "mymember/loginPro";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "mymember/logout";
	}
	
	@RequestMapping("modifyForm")
	public String modifyForm(Model model, String pageNum, HttpSession session) {
		model.addAttribute("pageNum", pageNum);
		String id = (String)session.getAttribute("memId"); 
		model.addAttribute("myMemberDTO", service.getMember(id));
		return "mymember/modifyForm";
	}
	
	@RequestMapping("modifyPro")
	public String modifyPro(MyMemberDTO dto, String pageNum, Model model, HttpSession session) {
		model.addAttribute("pageNum", pageNum);
		String id = (String)session.getAttribute("memId"); 
		service.getMember(id);
		model.addAttribute("myMemberDTO",service.updateMember(dto));
		return "mymember/modifyPro";
	}
	
	@RequestMapping("deleteForm")
	public String delteForm(String pageNum, Model model, HttpSession session) {
		model.addAttribute("pageNum",pageNum);
		String id = (String)session.getAttribute("memId");
		model.addAttribute("myMemberDTO", service.getMember(id));
		
		return "mymember/deleteForm";
	}
	
	@RequestMapping("deletePro")
	public String deletePro(MyMemberDTO dto, String pageNum, Model model, HttpSession session) {
		int result  = service.loginCheck(dto);
		if(result == 1) {
			session.invalidate();
			
			model.addAttribute("pageNum",pageNum);
			model.addAttribute("check", service.deleteMember(dto));
		}
		return "mymember/deletePro";
	}
	
	@RequestMapping("idCheck")
	public @ResponseBody int idCheck(String id) {
		return service.idCheck(id);
	}
}
