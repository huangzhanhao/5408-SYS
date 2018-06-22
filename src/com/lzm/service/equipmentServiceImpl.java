package com.lzm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzm.mapper.EqclassMapper;
import com.lzm.mapper.EquipmentMapper;
import com.lzm.pojo.Eqclass;
import com.lzm.pojo.Equipment;
import com.lzm.pojo.EquipmentTemp;


@Service
public class equipmentServiceImpl implements equipmentService {

	@Autowired
	private EquipmentMapper equipmentMapper;
	@Autowired
	private EqclassMapper eqclassMapper;
	
	@Override
	public List<Equipment> selectAllEquipment() {
		return equipmentMapper.selectAllEquipment();
	}
	
	@Override
	public List<Eqclass> selectAllEqclass() {
		return eqclassMapper.selectAllEqclass();
	}

	@Override
	public Equipment selectByPrimaryKey(Integer id) {
		return equipmentMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Equipment> selectByName(String str) {
		return equipmentMapper.selectByName(str);
	}

	@Override
	public String selectClassById(Integer eqClassId) {
		return eqclassMapper.selectClassById(eqClassId);
	}

	@Override
	public EquipmentTemp selectByPrimaryKeyTemp(Integer id) {
		return equipmentMapper.selectByPrimaryKeyTemp(id);
	}
	
	
}
