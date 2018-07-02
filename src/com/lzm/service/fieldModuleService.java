package com.lzm.service;

import java.util.List;

import com.lzm.pojo.field;
import com.lzm.pojo.field_damage;
import com.lzm.pojo.field_order;

public interface fieldModuleService {
	
	// 管理员查询场地列表
	public List<field> getFieldListService();
	
	//管理员新增场地
	public void addFieldService(field field);
	
	//管理员修改场地信息
	public void editFieldService(field field);
	
	//管理员查看场地受损记录
	public List<field_damage> getFieldDamageListService();
	
	//管理员查看场地的订单记录
	public List<field_order> getFieldOrderListService();
}
