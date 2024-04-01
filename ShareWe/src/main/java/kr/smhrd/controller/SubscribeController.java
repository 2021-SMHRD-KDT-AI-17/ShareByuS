package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.member;
import kr.smhrd.entity.payment;
import kr.smhrd.mapper.SubscribeMapper;

@Controller
public class SubscribeController {

	@Autowired
	private SubscribeMapper subscribeMapper;

	// 결제완료 메소드
	@RequestMapping("/paySuccess")
	public String paySuccess(payment payment, Model model) {
		subscribeMapper.plusPaidCnt(payment);
		subscribeMapper.paySuccess(payment);
		model.addAttribute("successPay", payment);
		
		return "Payment";
	}
	
	@RequestMapping("/gopaySuccess")
	public String gopaySuccess() {
		
		return "Payment";
	}
	
	

}
