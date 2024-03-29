package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.report;

@Mapper
public interface ReportMapper {

	public void sendReportInfo();
	
	public void reportInsert(report report);



	


}
