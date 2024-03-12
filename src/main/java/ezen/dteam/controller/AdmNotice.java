package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value = "/admin/notice")
@Controller
public class AdmNotice {
	
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noticeList() {
		
		return "/admin/notice/noticeList";
	}
	
	@RequestMapping(value = "/noticeView", method = RequestMethod.GET)
	public String noticeView() {
		
		return "/admin/notice/noticeView";
	}
	
	
	
	
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.GET)
	public String noticeWrite() {
		
		return "/admin/notice/noticeWrite";
	}
	
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.POST)
	public String noticeWriteOk() {
		
		return "redirect:/";
	}
	
	
	
	
	@RequestMapping(value = "/noticeModify", method = RequestMethod.GET)
	public String noticeModify() {
		
		return "/admin/notice/noticeModify";
	}
	
	@RequestMapping(value = "/noticeModify", method = RequestMethod.POST)
	public String noticeModifyOk() {
		
		return "redirect:/";
	}
	
	
	
}
