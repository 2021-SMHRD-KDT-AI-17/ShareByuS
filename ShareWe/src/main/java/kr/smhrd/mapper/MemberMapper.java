package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Member;

@Mapper
public interface MemberMapper {

	public void memberInsert(Member member);
	
}
