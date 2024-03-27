package kr.smhrd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WebController {

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
	public String gogBoard() {
		return "gBoard";
	}
	@RequestMapping("/gocBoard")
	public String gocBoard() {
		return "cBoard";
	}
	
	@RequestMapping("/goAdmin")
	public String goAdmin() {
		return "AdminPage";
	}
	
	@RequestMapping("/goAdReport")
	public String goAdReport() {
		return "AdReport";
	}
	

	
//	@RequestMapping("/goMyPage")
//	public String goMyPage() {
//		return "MyPage";
//	}
	
	

}
