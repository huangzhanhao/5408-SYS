package com.lzm.mapper;

import java.util.List;

import com.lzm.pojo.field;
import com.lzm.pojo.field_damage;
import com.lzm.pojo.field_order;

public interface fieldMapper {
	
	//查询所有场地
	List<field> selectAllfield();
	
	//添加场地
	void insertfield(field field);
	
	//查询所有受损记录
	List<field_damage> selectAllfield_damage();
	
	//查询所有订单
	List<field_order> selectAllfield_order();
}
