package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.c_board;

@Mapper
public interface C_BoardMapper {

	public List<c_board> getCBoard();

}
