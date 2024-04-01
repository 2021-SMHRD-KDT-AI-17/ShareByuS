package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.subscribe;

@Mapper
public interface SubscribeMapper {

	public void insertSubscribe(String email);
	
	public subscribe getSubscribe(String email);

	public void useFreeCnt(String email);

	public void usePaidCnt(String email);

}
