package com.bsb.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.bsb.model.StockInAppdetail;
import com.bsb.model.StockInAppsum;
import com.bsb.model.StockInRecord;

@Mapper
public interface StockInMapper {
	//1.入库申请
	public List<StockInAppsum> ShowAppsum(int state);//展示所有申请表
	public int GetNextAppId();//获取下一个申请表单号
	//2.入库申请汇总
	public List<StockInAppdetail> ShowAppdetail(int state);//显示申请表信息
	public void Appsubmit(@Param("id")int id, //插入一次申请记录
			@Param("applicant")String applicant,@Param("name")String name,@Param("size")String size,
			@Param("condition")String condition);
	public void Appcheck(@Param("id")int id, //申请表审核
			@Param("name")String name, @Param("result")String result, @Param("reason")String reason);
	//3.入库记录表
	public List<StockInRecord> ShowRecord();//显示入库记录表
	public List<StockInRecord> ShowRecordbySample_id(@Param("sample_id")String sample_id);//根据编码显示申请记录中具体样本
	public int GetNextRecordId();//获取下一个入库记录号
	public void Recordsubmit(@Param("id")int id,//提交一次样本记录
			@Param("application_id")int application_id, @Param("sample_id") String sample_id,
			@Param("sample_name")String sample_name, @Param("position_id")String position_id);
}
