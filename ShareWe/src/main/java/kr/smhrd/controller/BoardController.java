package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.entity.gBoard;

@Controller
public class BoardController {
	
	//shop.jsp로 이동
	@RequestMapping("/goShop")
	public String goShop() {
		return "Shop";
	}
	
	
	// 게시글작성
	@RequestMapping("/gBoardInsert")
		public String gBoardInsert(gBoard g_board, HttpServletRequest request) {
		String path = request.getRealPath("resources/g_Image");
		System.out.println(path);
		int size = 1024*1024*10;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
			return "redirect:/goShop";
		
	}
		
	

}
