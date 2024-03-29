package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.entity.c_board;
import kr.smhrd.entity.g_board;
import kr.smhrd.entity.member;
import kr.smhrd.mapper.C_BoardMapper;
import kr.smhrd.mapper.G_BoardMapper;
import kr.smhrd.mapper.MemberMapper;

@Controller
public class C_BoardController {
	
	@Autowired
	private C_BoardMapper c_boardMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@RequestMapping("/goShop")
	public String goShop() {
		return "Shop";
	}

	
	@RequestMapping("/goCompany")
	public String goGeneral(Model model) {
		List<c_board> cboard_list = c_boardMapper.getCBoard();
		model.addAttribute("cboard_list", cboard_list);
		return "Shop";
	}
	
	@RequestMapping("/getComCategory")
	public String getComCategory(@RequestParam("category") String category, Model model) {
		List<c_board> cboard_list = c_boardMapper.getComCategory(category);
		model.addAttribute("cboard_list", cboard_list);
		return "Shop";
	}
	
	@RequestMapping("/cBoardInsert")
	public String cBoardInsert(c_board c_board, HttpSession session, HttpServletRequest request) {
		
		String path = request.getRealPath("resources/g_Image");
		System.out.println(path);
		int size = 1024*1024*10;
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		member loginMember = (member)session.getAttribute("loginMember");
		String email = loginMember.getEmail();
		String c_writer = loginMember.getNick();
		int price = c_board.getPrice();
		int c_ea = c_board.getC_ea();
		double c_opt1 = c_board.getC_opt1();
		
		try {
			MultipartRequest multi= new MultipartRequest(request,path,size, encoding, rename);
			String c_title = multi.getParameter("c_title");
			String c_content = multi.getParameter("c_content");
			String c_f_date = multi.getParameter("c_f_date");
			String c_img1 = multi.getFilesystemName("c_img1");
			String category = multi.getParameter("category");
			
			c_board = new c_board(c_title, c_writer, email, c_img1, c_content, c_f_date, category, price, c_opt1, c_ea);
			
			int cnt = c_boardMapper.insertCBoard(c_board);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
			return "redirect:/goCompany";
		
	}
		
	
	@RequestMapping("/C_BoardContent")
	public String C_BoardContent(@RequestParam("c_num") int c_num, Model model) {
		
		
		c_board c_board = c_boardMapper.C_BoardContent(c_num); //num값에 해당하는 하나의 게시물 가져오기
		model.addAttribute("c_board",c_board);
		
//			g_boardMapper.G_BoardCount(g_num); // num값에 해당하는 게시물 조회수 1증가
		return "cBoardDetail";
	}
	
	@RequestMapping("/cParticipate")
	public String cParticipate(@RequestParam("c_num") int c_num) {
		c_boardMapper.cParticipate(c_num);
		
		return "redirect:/goMain";
	}
	
	}
	
	
	
	
	
	

		
	


