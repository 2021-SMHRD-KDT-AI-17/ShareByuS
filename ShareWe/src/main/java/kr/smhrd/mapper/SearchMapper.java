package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchMapper {

	public void Search(String searchText);

}
