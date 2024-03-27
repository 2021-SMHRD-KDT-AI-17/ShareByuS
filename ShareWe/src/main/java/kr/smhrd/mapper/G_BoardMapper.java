package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.g_board;

@Mapper
public interface G_BoardMapper {

	public int insertBoard(g_board g_board);

	public List<g_board> getGBoard();

	public List<g_board> getCategory(String category);

	public List<g_board> getEmail(String email);

	
	


	
	
}
