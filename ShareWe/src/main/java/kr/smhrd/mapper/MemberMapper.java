package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.approve;
import kr.smhrd.entity.member;

@Mapper
public interface MemberMapper {

	public void memberInsert(member member);

	public void approveMemInsert(approve approveMem);

	@Select("select * from member where email=#{email}")
	public member checkEmail(String inputEmail);

	public member memberCheck(member member);
	
	public member memberCheck2(member member);

	public void approveInsert(member member);

	public List<approve> goAdApprove();

	public approve getApprove(String email);

	public void delApprove(String email);

	public void memberUpdate(member member);

	public void updateNick(member member);

	public static void sendReportInfo() {
		// TODO Auto-generated method stub
		
	}





	
}
