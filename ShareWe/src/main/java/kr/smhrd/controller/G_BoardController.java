package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import kr.smhrd.entity.g_board;
import kr.smhrd.entity.g_favorite;
import kr.smhrd.entity.member;
import kr.smhrd.mapper.FavoriteMapper;
import kr.smhrd.mapper.G_BoardMapper;
import kr.smhrd.mapper.MemberMapper;

@Controller
public class G_BoardController {
	
	@Autowired
	private G_BoardMapper g_boardMapper;
	
	@Autowired
	private MemberMapper memberMapper;

	private int g_num;

	private FavoriteMapper favoriteMapper;
	
	@RequestMapping("/goShare")
	public String goShare() {
		return "Share";
	}
	
	//shop.jsp로 이동
	@RequestMapping("/goGeneral")
	public String goGeneral(Model model) {
		List<g_board> gboard_list = g_boardMapper.getGBoard();
		model.addAttribute("gboard_list", gboard_list);
		return "Share";
	}
	
	@RequestMapping("/getCategory")
	public String getCategory(@RequestParam("category") String category, Model model) {
		List<g_board> gboard_list = g_boardMapper.getCategory(category);
		model.addAttribute("gboard_list", gboard_list);
		return "Share";
	}
	
	
	//게시글작성
	@RequestMapping("/gBoardInsert")
		public String gBoardInsert(g_board g_board, HttpSession session, HttpServletRequest request) {
		String path = request.getRealPath("resources/g_Image");
		System.out.println(path);
		int size = 1024*1024*10;
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		member loginMember = (member)session.getAttribute("loginMember");
		String email = loginMember.getEmail();
		String g_writer = loginMember.getNick();
		
		
		
		try {
			MultipartRequest multi= new MultipartRequest(request,path,size, encoding, rename);
			String g_title = multi.getParameter("g_title");
			String g_content = multi.getParameter("g_content");
			String g_img1 = multi.getFilesystemName("g_img1");
			String category = multi.getParameter("category");
			
			
			
			g_board = new g_board(g_title,g_writer, email, g_img1, g_content, category);
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
		
			return "redirect:/goGeneral";
		
	}
	
	
	//gBoardDetail 로
	
	@RequestMapping("/G_BoardContent")
	public String G_BoardContent(@RequestParam("g_num") int g_num, Model model, HttpSession session) {
		member loginMember = (member)session.getAttribute("loginMember");
		g_board g_board = g_boardMapper.G_BoardContent(g_num); //num값에 해당하는 하나의 게시물 가져오기
		model.addAttribute("g_board",g_board);
		
	
		model.addAttribute("g_board", g_board);
		 
		return "gBoardDetail";
	}
	
	
	@RequestMapping("/gParticipate")
	public String gParticipate(@RequestParam("g_num") int g_num) {
		g_boardMapper.gParticipate(g_num);
		
		return "redirect:/goGeneral";
	}	
	
	@RequestMapping("/goBoardUp")
	public String goBoardUp(@RequestParam("g_num") int g_num, @RequestParam("g_img1") String g_img1, @RequestParam("g_content") String g_content, Model model) {
		model.addAttribute("g_num", g_num);
		model.addAttribute("g_content", g_content);
		model.addAttribute("g_img1", g_img1);
		
		return "BoardUp";
	}
	
	@RequestMapping("/gBoardUp")
	public String gBoardUp(@RequestParam("g_num") int g_num, Model model) {
		g_boardMapper.gBoardUp(g_num);
		
		return "redirect:/goGeneral";
	}	
		
}
