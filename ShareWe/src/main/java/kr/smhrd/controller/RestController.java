package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.g_board;
import kr.smhrd.entity.g_favorite;
import kr.smhrd.entity.member;
import kr.smhrd.mapper.FavoriteMapper;
import kr.smhrd.mapper.G_BoardMapper;
import kr.smhrd.mapper.MemberMapper;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private G_BoardMapper g_boardMapper;
	
	@Autowired
	private FavoriteMapper favoriteMapper;
	
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
	
	@RequestMapping("/checkFavorite")
	public int checkFavorite(@RequestParam("g_num") int g_num, g_favorite g_favorite, HttpSession session) {
		
		g_favorite g_favorite_num = favoriteMapper.checkFavorite(g_num);
		if(g_favorite_num ==null) {
			
			member loginMember = (member)session.getAttribute("loginMember");
			String email = loginMember.getEmail();
			g_favorite = new g_favorite(email, g_num);
			favoriteMapper.addFavorite(g_favorite);
			
			return 1;
		}else {
			
			return 2;
		}
		
		
				
	}
	
//	@RequestMapping("/addFavorite")
//	public void addFavorite(@RequestParam("g_num") int g_num) {
//		
//		
//		
//		
//		
//
//		
//	}
//	
	
//	// 일반 게시판 카테고리
//	@RequestMapping("/goVege")
//	public int goVege(@RequestParam("") String clickVege) {
//		List<g_board> g_boardList = g_boardMapper.getVege(clickVege);
//		
//	}
	
	
}
