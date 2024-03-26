package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.member;

@Mapper
public interface MemberMapper {

	public void memberInsert(member member);

	@Select("select * from member where email=#{email}")
	public member checkEmail(String inputEmail);

	public member memberCheck(member member);



	
}
