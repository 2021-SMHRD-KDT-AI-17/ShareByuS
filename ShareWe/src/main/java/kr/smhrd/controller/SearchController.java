package kr.smhrd.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.SearchMapper;

@Controller
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Autowired
	private SearchMapper searchMapper;
	
	@RequestMapping("/search")
	public void search(HttpServletRequest request) {
		String searchText = request.getParameter("searchText");
		System.out.println(searchText);
		
		searchMapper.search(searchText);
	}
	
}
