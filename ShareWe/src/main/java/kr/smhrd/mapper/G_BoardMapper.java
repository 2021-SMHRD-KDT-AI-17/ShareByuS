package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.g_board;
import kr.smhrd.entity.report;

@Mapper
public interface G_BoardMapper {

	public int insertBoard(g_board g_board);

	public List<g_board> getGBoard();

	public List<g_board> getCategory(String category);

	public List<g_board> getGEmail(String email);


	public g_board G_BoardContent(int g_num);

	public List<g_board> getG_num(int g_num);
	
	public void gParticipate(int g_num);

	public void deleteRep(String param1, int param2);


		

	
	


	
	
}
