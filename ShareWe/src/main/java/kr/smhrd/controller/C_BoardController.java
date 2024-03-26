package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	private C_BoardMapper c_BoardMapper;
	
	@RequestMapping("/goCompany")
	public String goGeneral(Model model) {
		List<c_board> cboard_list = c_BoardMapper.getCBoard();
		model.addAttribute("cboard_list", cboard_list);
		return "Shop2";
	}
	
	}
	
	

		
	


