package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.c_board;
import kr.smhrd.entity.g_board;
import kr.smhrd.mapper.SearchMapper;

@Controller
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Autowired
	private SearchMapper searchMapper;
	
	@RequestMapping("/goSearch")
	public String goSearch(HttpServletRequest request, Model model) {
		String searchText = request.getParameter("searchText");
		model.addAttribute("searchText", searchText);
		
		List<g_board> gboard_list = searchMapper.gSearch(searchText);
	    model.addAttribute("gboard_list", gboard_list);
	    List<c_board> cboard_list = searchMapper.cSearch(searchText);
	    model.addAttribute("cboard_list", cboard_list);

	    return "Search";
	}
	
}
