package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.c_board;
import kr.smhrd.entity.g_favorite;
import lombok.NonNull;

@Mapper
public interface FavoriteMapper {

	public void addFavorite(g_favorite g_favorite);

	public List<g_favorite> fv_list(int g_num);

	public List<g_favorite> getGEmail(String email);

	@Select("select * from g_favorite where g_num=#{g_num}")
	public g_favorite checkFavorite(int g_num);
	
	
//	public List<g_favorite> getFavorite_list();





}
