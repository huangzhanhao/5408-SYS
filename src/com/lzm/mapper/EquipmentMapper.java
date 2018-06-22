package com.lzm.mapper;

import java.util.List;

import com.lzm.pojo.Equipment;
import com.lzm.pojo.EquipmentTemp;

public interface EquipmentMapper {
    Equipment selectByPrimaryKey(Integer eqId);
    EquipmentTemp selectByPrimaryKeyTemp(Integer eqId);
    
	List<Equipment> selectAllEquipment();

	List<Equipment> selectByName(String str);
}