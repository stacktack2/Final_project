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
	
	
	
	
	
}
