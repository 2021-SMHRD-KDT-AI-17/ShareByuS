package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.c_board;
import kr.smhrd.entity.g_board;
import kr.smhrd.entity.member;
import kr.smhrd.mapper.C_BoardMapper;
import kr.smhrd.mapper.G_BoardMapper;
import kr.smhrd.mapper.MemberMapper;

@Controller
public class WebController {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private G_BoardMapper g_boardMapper;
	
	@Autowired
	private C_BoardMapper c_boardMapper;

	
	private static final Logger logger = LoggerFactory.getLogger(WebController.class);
	
	// Main.jsp로 이동하는 메소드
	@RequestMapping("/")
	public String main(Model model) {
		List<g_board> gboard_list = g_boardMapper.getGBoard();
		model.addAttribute("gboard_list", gboard_list);
		List<c_board> cboard_list = c_boardMapper.getCBoard();
		model.addAttribute("cboard_list", cboard_list);
		
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
	
	@RequestMapping("/goAdmin")
	public String goAdmin() {
		return "AdminPage";
	}
	
	@RequestMapping("/goAdReport")
	public String goAdReport() {
		return "AdReport";
	}
	

	
	@RequestMapping("/goUpdateMember")
	public String goUpdateMember(HttpSession session) {
		member loginMember = (member)session.getAttribute("loginMember");
		if(loginMember !=null) {
			return "UpdateMember";
		}else {
			
		}return "Login";
	}
	
	
	// 임시) 신고하기
	@RequestMapping("/goReport")
	public String goReport() {
		return "report";
	}
	@RequestMapping("/goGDetail")
	public String goGDetail() {
		return "gBoardDetail";
	}
	
	@RequestMapping("/goMyPage")
	public String goMyPage(Model model, HttpSession session) {
		
		if(session.getAttribute("loginMember") != null) {
			member loginMember = (member)session.getAttribute("loginMember");
			
			if(loginMember.getType() == 2 || loginMember.getType() == 3 ) {
				List<g_board> gboard_list = g_boardMapper.getGEmail(loginMember.getEmail());
				model.addAttribute("gboard_list", gboard_list);
			}else if (loginMember.getType() == 1){
				List<c_board> cboard_list = c_boardMapper.getCEmail(loginMember.getEmail());
				model.addAttribute("cboard_list", cboard_list);
			}
			return "myPage";
		}else {
			return "Login";
		}
		
	}
	
//	@RequestMapping("/goReportSuccess")
//	public String goReportSuccess() {
//		return "reportSuccess";
//	}


//	@RequestMapping("/goMyPage")
//	public String goMyPage() {
//		return "MyPage";
//	}
	
	



	
	@RequestMapping("/goChat")
	public String goChat() {
		return "chat-ws";
	}

}
