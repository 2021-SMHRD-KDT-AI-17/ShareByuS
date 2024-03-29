package kr.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.RequestScope;

import kr.smhrd.entity.g_board;
import kr.smhrd.entity.member;
import kr.smhrd.entity.report;
import kr.smhrd.mapper.C_BoardMapper;
import kr.smhrd.mapper.G_BoardMapper;
import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.ReportMapper;

@Controller
public class ReportController {

	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	private ReportMapper reportMapper;
	
	// 신고한 정보를 넘기고 신고 완료 페이지로 이동
	@RequestMapping("/reportInsert")
	public String reportInsert(report report,HttpServletRequest request , HttpSession session) {
		member loginMember = (member)session.getAttribute("loginMember");
		
		String rp_email = loginMember.getEmail();
		String rp_content = request.getParameter("rp_content");
		String email = request.getParameter("email");
		int b_num = Integer.parseInt(request.getParameter("b_num")) ;
		String r_title = request.getParameter("r_title");
		
		report = new report(email, rp_email, rp_content, b_num, r_title);
		
		reportMapper.reportInsert(report);
//		model.addAttribute("reportMember", report);
		
		return "reportSuccess";
	}
	
	
	// 신고 통과
	@RequestMapping("/passRep")
	public String passRep(@RequestParam("email") String param1, @RequestParam("b_num") int param2) {
		reportMapper.passRep(param1, param2);
		
		return "redirect:/goAdReport";
	}
	
	

}
