package org.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mvc.bean.MyBoardDTO;
import org.mvc.service.MyBoardS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@Log4j
@RequestMapping("/myboard/")
public class MyBoardController {

	@Autowired
	private MyBoardS service;
	
	@RequestMapping("list")
	public String list(String pageNum, Model model) {
		
		int pageSize = 10;
		
		if (pageNum == null) { // 처음 list.jsp실행 시, null이기 때문에 1로 저장한다
	        pageNum = "1";
	    }
	 // pageNum에 문자열을  Integer.parseInt를 이용해서 int로 변환하고, 현재 페이지 currentPage에 대입한다
	    int currentPage = Integer.parseInt(pageNum);
	 
	    int startRow = (currentPage - 1) * pageSize + 1;  // 페이지의 시작 페이지
	    // 시작행 = (현재페이지 -1) * 게시물 수(10) +1;
	    
	    int endRow = currentPage * pageSize; // 페이지의 끝 페이지
	    
	    int count = 0;
	    int number = 0;
		
		List<MyBoardDTO> list = service.getList(startRow, endRow);
		count = service.contentCount();
		if(count > 0) {		
			model.addAttribute("list",list);
			model.addAttribute("pageNum",pageNum);
			model.addAttribute("count",count);
		}
		
		number=count-(currentPage-1)*pageSize;
		
		
		if (count > 0) {// 전체페이지 수를 연산
	        int pageCount = count / pageSize + ( count % pageSize == 0 ? 0 : 1);
	       			 // 글수 / 페이지 수 + (글수 % 페이지수 == 0 ? 0: 1);
					// 글수와 페이지 수를 나누어 나머지를 이용하여 페이지 수를 계산한다
			  	   // 페이지수를 만들어 주는 역할
			   
	        int startPage = (int)(currentPage/10)*10+1;
			int pageBlock=10;  // 한 블록당 몇 개 페이지를 보여줄지
	        int endPage = startPage + pageBlock-1;
	        if (endPage > pageCount) endPage = pageCount;
	        model.addAttribute("startPage" , startPage);
	        model.addAttribute("endPage" , endPage);
	        model.addAttribute("pageCount" , pageCount);
		}
		return "myboard/list";
	}
	
	@RequestMapping("write")
	public String writer(MyBoardDTO dto, Model model) {
		
			int num=0,ref=1,re_step=0,re_level=0;

		    if(dto.getNum() != 0){
		    	num = dto.getNum();
		    	ref = dto.getRef();
		    	re_step = dto.getRe_step();
		    	re_level = dto.getRe_level();
			}
		    dto.setNum(num);
		    dto.setRef(ref);
		    dto.setRe_step(re_step);
		    dto.setRe_level(re_level);
		    
		    log.info(""+dto.getNum());
		    
		    model.addAttribute("myBoardDTO",dto);
		return "myboard/write";
	}
	
	@RequestMapping("writePro")
	public String writePro(MyBoardDTO dto, Model model, HttpServletRequest request) {
		
		int num = dto.getNum();
    	int ref = dto.getRef();
    	int re_step = dto.getRe_step();
    	int re_level = dto.getRe_level();
    	
    	int number = 0;
    	
    	int  maxCount = service.contentMaxNum();
    	
    	if(maxCount != 0) {
    		number = maxCount +1;
    	}else {
    		number = 1;
		}
    	
    	if(num !=0 ) {
    		service.re_stepUpdate(ref, re_step);
    		re_step = re_step + 1;
    		re_level = re_level + 1;
    	}else {
    		ref = number;
    		re_step = 0;
    		re_level = 0;
    	}
    	
    	dto.setRef(ref);
    	dto.setRe_step(re_step);
    	dto.setRe_level(re_level);
    	
    	dto.setIp(request.getRemoteAddr());
    	
		model.addAttribute("result",service.myboardWrite(dto));
		return "myboard/writePro";
	}
	
	@RequestMapping("readcount")
	public String readcount(int num, RedirectAttributes rttr, String pageNum) {
		service.readCount(num);
		rttr.addAttribute("num", num);
		rttr.addAttribute("pageNum", pageNum);
		return "redirect:/myboard/content";
	}
	
	@RequestMapping("content")
	public String content(int num,String pageNum, Model model) {
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("myBoardDTO", service.getRead(num));
		return "myboard/content";
	}
	
	@RequestMapping("update")
	public String update(int num, String pageNum, Model model) {
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("myBoardDTO",service.getRead(num));
		return "myboard/update";
	}
	
	@RequestMapping("updatePro")
	public String updatePro(MyBoardDTO dto,String pageNum, Model model) {
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("result", service.myboardUpdate(dto));
		return "myboard/updatePro";
	}
	
	@RequestMapping("delete")
	public String delete(int num, String pageNum, Model model) {
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("num",num);
		return "myboard/delete";
	}
	
	@RequestMapping("deletePro")
	public String deletePro(MyBoardDTO dto, String pageNum, Model model) {
		model.addAttribute("pageNum",pageNum);
		log.info(dto.getPasswd());
		model.addAttribute("result", service.myboardDelete(dto));
		return "myboard/deletePro";
	}
}