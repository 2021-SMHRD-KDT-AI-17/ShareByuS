package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.g_board;
import kr.smhrd.entity.member;
import kr.smhrd.entity.report;
import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.ReportMapper;

@Controller
public class ReportController {

	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	private ReportMapper reportMapper;
	
	@RequestMapping("/sendReportInfo")
	public String sendReportInfo(member member, g_board g_board, HttpSession session) {
		reportMapper.sendReportInfo();
		return "report";
	}
	
	@RequestMapping("/reportInsert")
	public String reportInsert(report report, Model model) {
		reportMapper.reportInsert();
		model.addAttribute("reportMember", report);
		
		return "reportSuccess";
	}
	
	

}
