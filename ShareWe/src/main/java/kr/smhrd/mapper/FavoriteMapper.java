package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.c_board;
import kr.smhrd.entity.c_favorite;
import kr.smhrd.entity.g_favorite;
import lombok.NonNull;

@Mapper
public interface FavoriteMapper {
//g
	public void addFavorite(g_favorite g_favorite);
	
	public List<g_favorite> fv_list(int g_num);

	public List<g_favorite> getGEmail(String email);

	@Select("select * from g_favorite where g_num=#{g_num} and email=#{email}")
	public g_favorite checkFavorite(@Param("g_num")int c_num, @Param("email") String email);
	
	public List<g_favorite> getFv_list();
	
//c
	public void addCFavorite(c_favorite c_favorite);
	
	
	public List<c_favorite> fvC_list(int c_num);

	public List<c_favorite> getCEmail(String email);

	
	public List<c_favorite> getCFv_list();



	@Select("select * from c_favorite where c_num=#{c_num} and email=#{email}")
	public c_favorite checkCFavorite( @Param("c_num")int c_num, @Param("email") String email);

	
	

	

	
	
	






}
