package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.entity.g_board;
import kr.smhrd.entity.member;
import kr.smhrd.mapper.G_BoardMapper;
import kr.smhrd.mapper.MemberMapper;

@Controller
public class G_BoardController {
	
	@Autowired
	private G_BoardMapper g_boardMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	//shop.jsp로 이동
	@RequestMapping("/goShop")
	public String goShop() {
		return "Shop";
	}
	
	
//	 게시글작성
	@RequestMapping("/gBoardInsert")
		public String gBoardInsert( g_board g_board, HttpServletRequest request) {
		String path = request.getRealPath("resources/g_Image");
		System.out.println(path);
		int size = 1024*1024*10;
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		try {
			MultipartRequest multi= new MultipartRequest(request,path,size, encoding, rename);
			String g_title = multi.getParameter("g_title");
			String g_content = multi.getParameter("g_content");
			String g_img1 = multi.getFilesystemName("g_img1");
			String category = multi.getParameter("category");
			
			
			g_board = new g_board(g_title, g_img1, g_content, category);
			System.out.println(g_board.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int cnt = g_boardMapper.insertBoard(g_board);
		if(cnt>0) {
			System.out.println("업로드 성공~");
		}else {
			System.out.println("업로드 실패~");
		}
		
			return "redirect:/goShop";
		
	}
		
	

}
