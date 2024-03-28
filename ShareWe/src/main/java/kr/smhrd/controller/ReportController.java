package kr.smhrd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.ReportMapper;

@Controller
public class ReportController {

	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	private ReportMapper reportMapper;
	
	@RequestMapping("/reportInsert")
	public String reportInsert() {
		
		
		return "reportSuccess";
	}
}
