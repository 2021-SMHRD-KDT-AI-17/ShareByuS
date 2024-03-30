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
		try {
			MultipartRequest multi = new MultipartRequest(request, path, size, encoding, rename);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		c_boardMapper.cBoardInsert(c_board);
		
		return "redirect:/goCompany";
		
	}
		
	
	@RequestMapping("/C_BoardContent")
	public String C_BoardContent(@RequestParam("c_num") int c_num, @RequestParam("c_writer") String c_writer, Model model) {
		
		
		c_board c_board = c_boardMapper.C_BoardContent(c_num); //num값에 해당하는 하나의 게시물 가져오기
		model.addAttribute("c_board",c_board);
		
		member m_addr = memberMapper.C_BoardMap(c_writer);
		model.addAttribute("m_addr",m_addr);
		
//			g_boardMapper.G_BoardCount(g_num); // num값에 해당하는 게시물 조회수 1증가
		return "cBoardDetail";
	}
	
	@RequestMapping("/cParticipate")
	public String cParticipate(@RequestParam("c_num") int c_num) {
		c_boardMapper.cParticipate(c_num);
		
		return "redirect:/goMain";
	}
	
	// 게시글 삭제
	@RequestMapping("/deleteCBoard")
	public String deleteCBoard(@RequestParam("c_num") int c_num) {
		c_boardMapper.deleteCBoard(c_num);
		
		return "redirect:/goCompany";
	}
	
	// 게시글 수정 페이지로
	@RequestMapping("/goCUpdate")
	public String goCUpdate(int c_num, Model model) {
		c_board c_board = c_boardMapper.C_BoardContent(c_num);
		model.addAttribute("c_board", c_board);
		
		return "UpdateCBoard";
	}
	
	// 게시글 수정
	@RequestMapping("/cBoardUpdate")
	public String cBoardUpdate(c_board c_board, Model model) {
		c_boardMapper.cBoardUpdate(c_board);
		
		return "redirect:/C_BoardContent";
	}
	
	
	}
	
	
	
	
	
	

		
	


