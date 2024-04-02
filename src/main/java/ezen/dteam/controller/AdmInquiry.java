package ezen.dteam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.dao.admInquiryDAO;

@RequestMapping(value = "/admin/inquiry")
@Controller
public class AdmInquiry {
	
	@Autowired
	admInquiryDAO admInquiryDAO;
	 
	@RequestMapping(value = "/inquiryList", method = RequestMethod.GET)
	public String inquiryList(Model model) {
		
		model.addAttribute("board", admInquiryDAO.selectBoardAll());
		return "/admin/inquiry/inquiryList";
	}
	
	@RequestMapping(value = "/inquiryView", method = RequestMethod.GET)
	public String inquiryView() {
		
		return "/admin/inquiry/inquiryView";
	}
	
	
	
	
	
}
