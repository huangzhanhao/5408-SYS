package com.lzm.service;

import java.util.List;

import com.lzm.pojo.Eqclass;
import com.lzm.pojo.Equipment;
import com.lzm.pojo.EquipmentTemp;

public interface equipmentService {
	
	//查询商品列表
	public List<Equipment> selectAllEquipment();
	public List<Eqclass> selectAllEqclass();
	public Equipment selectByPrimaryKey(Integer id);
	public List<Equipment> selectByName(String str);
	public String selectClassById(Integer eqClassId);
	public EquipmentTemp selectByPrimaryKeyTemp(Integer id);


}
