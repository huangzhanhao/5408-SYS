package com.lzm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzm.mapper.fieldMapper;
import com.lzm.pojo.field;
import com.lzm.pojo.field_damage;
import com.lzm.pojo.field_order;

@Service
public class fieldModuleImpl implements fieldModuleService{

	@Autowired
	private fieldMapper fieldMapper;
	
	@Override
	public List<field> getFieldListService() {
		// TODO Auto-generated method stub
		return fieldMapper.selectAllfield();
	}

	@Override
	public List<field_damage> getFieldDamageListService() {
		// TODO Auto-generated method stub
		return fieldMapper.selectAllfield_damage();
	}

	@Override
	public List<field_order> getFieldOrderListService() {
		// TODO Auto-generated method stub
		return fieldMapper.selectAllfield_order();
	}

	@Override
	public void addFieldService(field field) {
		// TODO Auto-generated method stub
		fieldMapper.insertfield(field);
	}

	@Override
	public void editFieldService(field field) {
		// TODO Auto-generated method stub
		
	}

}
