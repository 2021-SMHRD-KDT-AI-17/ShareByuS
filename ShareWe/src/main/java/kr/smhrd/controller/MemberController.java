package kr.smhrd.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.entity.Member;
//import kr.smhrd.entity.Message;
import kr.smhrd.mapper.MemberMapper;
//import kr.smhrd.mapper.MessageMapper;

// Handler Mapping이 Controller를 찾기위해 @(Annotation)으로 Controller라고 명시해야 함
// servlet-context.xml 파일에 어떤 패키지에서 Controller를 찾을건지 명시
@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

//	// 인터페이스 불러오기 - Spring
//	@Autowired
//	private MemberMapper memberMapper;

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
	
	@RequestMapping("/goBoard1")
	public String goBoard1() {
		return "Shop-detail";
	}

	// 회원가입하는 메소드 /memberInsert
//	@RequestMapping("/memberInsert")
//	public String memberInsert(Member member, Model model) {
//		// System.out.println(member.toString());
//		memberMapper.memberInsert(member);
//		// model 객체에 저장하여 다음 페이지에 넘긴다!
//
//		// model에 저장한 데이터는 request안에 포함되므로
//		// 다음 페이지에서 불러올 때는 request 객체를 사용하여 불러온다!
//		model.addAttribute("email", member.getEmail());
//
//		return "JoinSuccess";
//	}
//
//	// 로그인 메소드
//	@RequestMapping("/memberSelect")
//	public String memberSelect(Member member, HttpSession session) {
//		// System.out.println(member.toString());
//		Member loginMember = memberMapper.memberSelect(member);
//
//		// 로그인 한 사람의 메세지 가져오기
//		// 메세지를 리스트타입으로 불러옴
//		List<Message> m_list = messageMapper.messageList(member.getEmail());
//
//		session.setAttribute("loginMember", loginMember);
//		session.setAttribute("m_list", m_list);
//
//		return "Main";
//	}
//
//	// 회원정보 수정하는 페이지로 이동 /showUpdate
//	@RequestMapping("/showUpdate")
//	public String showUpdate() {
//		return "UpdateMember";
//	}
//
//	// 회원정보 수정 메소드 /memberUpdate
//	@RequestMapping("/memberUpdate")
//	public String memberUpdate(Member member, HttpSession session) {
//		memberMapper.memberUpdate(member);
//		// 세션에 저장된 값도 업데이트
//		session.setAttribute("loginMember", member);
//		return "Main";
//	}
//
//	// 로그아웃 메소드
//	@RequestMapping("/memberLogout")
//	public String memberLogout(HttpSession session) {
//		session.invalidate();
//		return "Main";
//	}
//
//	// 회원정보 페이지로 이동하는 메소드 + 전체 회원정보 가져오기
//	@RequestMapping("/goShowMember")
//	public String goShowMember(Model model) {
//		List<Member> list = memberMapper.goShowMember();
//		model.addAttribute("list", list);
//		return "ShowMember";
//	}
//
//	// 회원정보 삭제하는 메소드
//	@RequestMapping("/deleteMember")
//	public String deleteMember(@RequestParam("email") String email, Model model) {
//		memberMapper.deleteMember(email);
//		// Spring에서 sendRedirect 사용하는 방법
//		// 다시 goShowMember를 실행시키고 ShowMember로 이동해서 리스트를 업데이트 해야하기 때문에!
//		return "redirect:/goShowMember";
//	}

}
