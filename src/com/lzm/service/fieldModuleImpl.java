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
	public void editFieldService(int idfield_old, int idfield, String field_type, String field_location,
			String field_describe, String field_capacity, String field_rental, String field_status) {
		// TODO Auto-generated method stub
		fieldMapper.updatefield(idfield_old, idfield, field_type, field_location, field_describe, field_capacity, field_rental, field_status);
	}

	@Override
	public void addFieldDamageService(field_damage field_damage) {
		// TODO Auto-generated method stub
		fieldMapper.insertfield_damage(field_damage);
	}

	@Override
	public void editFieldDamageService(field_damage field_damage) {
		// TODO Auto-generated method stub
		fieldMapper.updatefield_damage(field_damage);
	}

	@Override
	public void deleteFieldService(int idfield) {
		// TODO Auto-generated method stub
		fieldMapper.deletefield(idfield);
	}

	@Override
	public void deleteFieldDamageService(int idfield_damage) {
		// TODO Auto-generated method stub
		fieldMapper.deletefield_damage(idfield_damage);
	}

}
