package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value = "/admin/inquiry")
@Controller
public class AdmInquiry {
	
	@RequestMapping(value = "/inquiryList", method = RequestMethod.GET)
	public String inquiryList() {
		
		return "/admin/inquiry/inquiryList";
	}
	
	@RequestMapping(value = "/inquiryView", method = RequestMethod.GET)
	public String inquiryView() {
		
		return "/admin/inquiry/inquiryView";
	}
	
	
	
	
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.GET)
	public String inquiryWrite() {
		
		return "/admin/inquiry/inquiryWrite";
	}
	
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.POST)
	public String inquiryWriteOk() {
		
		return "redirect:/";
	}
	
	
	
	
	@RequestMapping(value = "/inquiryModify", method = RequestMethod.GET)
	public String inquiryModify() {
		
		return "/admin/inquiry/inquiryModify";
	}
	
	@RequestMapping(value = "/inquiryModify", method = RequestMethod.POST)
	public String inquiryModifyOk() {
		
		return "redirect:/";
	}
	
}
