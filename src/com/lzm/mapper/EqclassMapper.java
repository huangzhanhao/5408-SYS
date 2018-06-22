package com.lzm.mapper;

import com.lzm.pojo.Eqclass;
import com.lzm.pojo.EqclassExample;
import com.lzm.pojo.Equipment;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EqclassMapper {
	List<Eqclass> selectAllEqclass();

	String selectClassById(Integer eqClassId);
	
}