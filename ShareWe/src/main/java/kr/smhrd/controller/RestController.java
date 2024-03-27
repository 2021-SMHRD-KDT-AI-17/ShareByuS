package kr.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.g_board;
import kr.smhrd.entity.member;
import kr.smhrd.mapper.G_BoardMapper;
import kr.smhrd.mapper.MemberMapper;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private G_BoardMapper g_boardMapper;
	
	// Email 중복체크 ->비동기방식
	@RequestMapping("/emailCheck")
	public int emailCheck(@RequestParam("inputEmail") String inputEmail) {
		member member = memberMapper.checkEmail(inputEmail);
		if(member == null) {
			return 1;
		}else {
			return 0;
		}
	}
	
//	// 일반 게시판 카테고리
//	@RequestMapping("/goVege")
//	public int goVege(@RequestParam("") String clickVege) {
//		List<g_board> g_boardList = g_boardMapper.getVege(clickVege);
//		
//	}
	
	
}
