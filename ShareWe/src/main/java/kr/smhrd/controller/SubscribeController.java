package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.member;
import kr.smhrd.mapper.SubscribeMapper;

@Controller
public class SubscribeController {

	@Autowired
	private SubscribeMapper subscribeMapper;
	
	// 카카오로그인 메소드
	@RequestMapping("/paySuccess")
	public String paySuccess(member member, HttpSession session, Model model) {

		member loginMember = subscribeMapper.paySuccess(member);
		if (loginMember == null) {
			model.addAttribute("fail", "fail");

			return "Login";
		} else {
			session.setAttribute("loginMember", loginMember);
			return "redirect:/goMain";
		}
	}
	
}
