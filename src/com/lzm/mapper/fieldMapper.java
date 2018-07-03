package com.lzm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lzm.pojo.field;
import com.lzm.pojo.field_damage;
import com.lzm.pojo.field_order;

public interface fieldMapper {

	// 查询所有场地
	List<field> selectAllfield();

	// 添加场地
	void insertfield(field field);

	// 修改场地
	void updatefield(@Param("idfield_old") int idfield_old, @Param("idfield") int idfield,
			@Param("field_type") String field_type, @Param("field_location") String field_location,
			@Param("field_describe") String field_describe, @Param("field_capacity") String field_capacity,
			@Param("field_rental") String field_rental, @Param("field_status") String field_status);

	//删除场地
	void deletefield(@Param("idfield") int idfield);
	
	// 查询所有受损记录
	List<field_damage> selectAllfield_damage();

	// 新增场地受损记录
	void insertfield_damage(field_damage field_damage);
	
	// 修改场地受损记录
	void updatefield_damage(field_damage field_damage);
	
	//删除场地受损记录
	void deletefield_damage(@Param("idfield_damage") int idfield_damage);
	
	// 查询所有订单
	List<field_order> selectAllfield_order();
	
	//预约场地
	void reservefield(field_order field_order);
}
