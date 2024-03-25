package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.member;
import kr.smhrd.mapper.MemberMapper;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private MemberMapper memberMapper;
	
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
	
}
