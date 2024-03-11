package ezen.dteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ServiceCenterController {
	
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public String service() {
		
		return "serviceCenter/noticeList";
	}
	
}
