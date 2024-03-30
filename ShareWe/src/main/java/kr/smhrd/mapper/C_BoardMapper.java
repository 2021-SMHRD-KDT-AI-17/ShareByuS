package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.c_board;

@Mapper
public interface C_BoardMapper {

	public List<c_board> getCBoard();

	int insertCBoard(c_board c_board);

	public List<c_board> getCEmail(String email);

	public List<c_board> getComCategory(String category);

	public c_board C_BoardContent(int c_num);

	public void cParticipate(int c_num);

	public void deleteCBoard(int c_num);

	public void cBoardUpdate(c_board c_board);
	
	

}
