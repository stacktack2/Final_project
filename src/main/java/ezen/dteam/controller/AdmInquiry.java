package ezen.dteam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.dteam.dao.admInquiryDAO;
import ezen.dteam.vo.PagingVO;

@RequestMapping(value = "/admin/inquiry")
@Controller
public class AdmInquiry {
	
	@Autowired
	admInquiryDAO admInquiryDAO;
	 
	@RequestMapping(value = "/inquiryList", method = RequestMethod.GET)
	public String inquiryList(Model model, String nowPageParam) {
		
		int nowPage = 1;
		if(nowPageParam != null && !nowPageParam.equals("")){
			nowPage = Integer.parseInt(nowPageParam);
		}
		
		int totalCnt = admInquiryDAO.selectBoardAllCnt();
		
		PagingVO pagingVO = new PagingVO(nowPage, totalCnt, 2);
		
		model.addAttribute("pagingVO", pagingVO);
		System.out.println(pagingVO.getEndPage());
		
		model.addAttribute("board", admInquiryDAO.selectBoardAll(pagingVO));
		
		return "/admin/inquiry/inquiryList";
	}
	
	@RequestMapping(value = "/inquiryView", method = RequestMethod.GET)
	public String inquiryView() {
		
		
		return "/admin/inquiry/inquiryView";
	}
	
	
	
	
	
}
