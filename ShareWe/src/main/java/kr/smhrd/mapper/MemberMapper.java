package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.member;


@Mapper
public interface MemberMapper {

	public void memberInsert(member member);
	
}
