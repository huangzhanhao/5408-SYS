package com.lzm.service;

import java.util.List;

import com.lzm.pojo.field;
import com.lzm.pojo.field_damage;
import com.lzm.pojo.field_order;

public interface fieldModuleService {

	// 管理员查询场地列表
	public List<field> getFieldListService();

	// 管理员新增场地
	public void addFieldService(field field);

	// 管理员修改场地信息
	public void editFieldService(int idfield_old, int idfield, String field_type, String field_location,
			String field_describe, String field_capacity, String field_rental, String field_status);

	// 管理员删除场地信息
	public void deleteFieldService(int idfield);
	
	// 管理员查看场地受损记录
	public List<field_damage> getFieldDamageListService();
	
	// 管理员新增场地受损记录
	public void addFieldDamageService(field_damage field_damage);
	
	// 管理员修改场地受损记录
	public void editFieldDamageService(field_damage field_damage);
	
	// 管理员删除场地受损信息
	public void deleteFieldDamageService(int idfield_damage);

	// 管理员查看场地的订单记录
	public List<field_order> getFieldOrderListService();
	
	//用户预约场地
	public void reserveFieldService(field_order field_order);
}
