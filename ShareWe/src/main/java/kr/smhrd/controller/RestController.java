package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.c_favorite;
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
	private FavoriteMapper favoriteMapper;

	// Email 중복체크 ->비동기방식
	@RequestMapping("/emailCheck")
	public int emailCheck(@RequestParam("inputEmail") String inputEmail) {
		member member = memberMapper.checkEmail(inputEmail);
		if (member == null) {
			return 1;
		} else {
			return 0;
		}
	}

	@RequestMapping("/checkFavorite")
	public int checkFavorite(@RequestParam("g_num") int g_num, g_favorite g_favorite, HttpSession session) {
		
		member loginMember = (member)session.getAttribute("loginMember");
		String email = loginMember.getEmail();
		
		g_favorite g_favorite_num = favoriteMapper.checkFavorite(g_num, email);
		
		if(g_favorite_num ==null) {
			
			member loginmember = (member)session.getAttribute("loginMember");
			String lemail = loginmember.getEmail();
			
			g_favorite = new g_favorite(lemail, g_num);
			favoriteMapper.addFavorite(g_favorite);
			
			return 1;
		}else {
			
			return 0;
		}
	}
	@RequestMapping("/checkCFavorite")
	public int checkCFavorite(@RequestParam("c_num") int c_num, c_favorite c_favorite, HttpSession session) {

		member loginMember = (member) session.getAttribute("loginMember");
		String email = loginMember.getEmail();
		
		c_favorite c_favorite_num = favoriteMapper.checkCFavorite(c_num, email);
		
		if (c_favorite_num == null) {
			
			member loginmember = (member)session.getAttribute("loginMember");
			String lemail = loginmember.getEmail();
			
			c_favorite = new c_favorite(lemail, c_num);
			favoriteMapper.addCFavorite(c_favorite);

			return 1;
		} else {

			return 0;
		}
	}
		
		
				
	}


//	// 일반 게시판 카테고리
//	@RequestMapping("/goVege")
//	public int goVege(@RequestParam("") String clickVege) {
//		List<g_board> g_boardList = g_boardMapper.getVege(clickVege);
//		
//	}
	
	

