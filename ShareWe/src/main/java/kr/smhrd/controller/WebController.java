package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.member;
import kr.smhrd.mapper.MemberMapper;

@Controller
public class WebController {
	
	@Autowired
	private MemberMapper memberMapper;

	private static final Logger logger = LoggerFactory.getLogger(WebController.class);
	
	// Main.jsp로 이동하는 메소드
	@RequestMapping("/")
	public String main() {
		return "Main";
	}

	@RequestMapping("/goMain")
	public String goMain() {
		return "Main";
	}

	@RequestMapping("/goLogin")
	public String goLogin() {
		return "Login";
	}

	@RequestMapping("/goMemberType")
	public String goMemberType() {
		return "MemberType";
	}

	@RequestMapping("/goJoin")
	public String goJoin(@RequestParam("type") String type, Model model) {
		model.addAttribute("type", type);
		return "Join";
	}
	
	
	@RequestMapping("/gogBoard")
	public String gogBoard( HttpSession session) {
		member loginMember = (member)session.getAttribute("loginMember");
		
		if(loginMember !=null) {
			return "gBoard";
		}else {
			
		}return "Login";
	
	}
	

	@RequestMapping("/gocBoard")
	public String gocBoard() {
		
		
		
		return "cBoard";
	}
	
	
	
	// 임시) 신고하기
	@RequestMapping("/goReport")
	public String goReport() {
		return "report";
	}
	@RequestMapping("/goReportSuccess")
	public String goReportSuccess() {
		return "reportSuccess";
	}

	
//	@RequestMapping("/goMyPage")
//	public String goMyPage() {
//		return "MyPage";
//	}

}
