package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.g_board;

@Mapper
public interface G_BoardMapper {

	int insertBoard(g_board g_board);

	List<g_board> getGBoard();

	

	


	
	
}
