package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReportMapper {

	public void reportInsert();

	public void sendReportInfo();


}
