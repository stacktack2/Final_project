package ezen.dteam.controller;

import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value = "/serviceCenter")
@Controller
public class ServiceCenterController {
	
	//1.������ - ����
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noticeList() {
		
		return "serviceCenter/noticeList";
	}
	
	@RequestMapping(value = "/noticeView", method = RequestMethod.GET)
	public String noticeView() {
		
		return "serviceCenter/noticeView";
	}
	
	
	//2.������- ����
	@RequestMapping(value = "/inquiryList", method = RequestMethod.GET)
	public String inquiryList() {
		
		return "serviceCenter/inquiryList";
	}
	
	@RequestMapping(value = "/inquiryView", method = RequestMethod.GET)
	public String inquiryView() {
		
		return "serviceCenter/inquiryView";
	}
	
	
	//������- ����- �ۼ�
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.GET)
	public String inquiryWrite() {
		
		return "serviceCenter/inquiryWrite";
	}
	
	@RequestMapping(value = "/inquiryWrite", method = RequestMethod.POST)
	public String inquiryWriteOk() {
		
		return "redirect:/";
	}
	
	
	//������- ����- ����
	@RequestMapping(value = "/inquiryModify", method = RequestMethod.GET)
	public String inquiryModify() {
		
		return "serviceCenter/inquiryModify";
	}
	
	@RequestMapping(value = "/inquiryModify", method = RequestMethod.POST)
	public String inquiryModifyOk() {
		
		return "redirect:/";
	}
}
