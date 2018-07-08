package com.lzm.service;

import java.text.ParseException;
import java.util.List;

import com.lzm.pojo.Eqclass;
import com.lzm.pojo.Eqexamine;
import com.lzm.pojo.Eqmaintain;
import com.lzm.pojo.Eqrental;
import com.lzm.pojo.Eqreturn;
import com.lzm.pojo.EqreturnTemp;
import com.lzm.pojo.Equipment;
import com.lzm.pojo.EquipmentTemp;
import com.lzm.pojo.Equipmentspend;
import com.lzm.pojo.Eqwarehouse;

public interface equipmentService {

	// 查询商品列表
	public List<Equipment> selectAllEquipment();

	public List<Eqclass> selectAllEqclass();

	public Equipment selectByPrimaryKey(Integer id);

	public List<Equipment> selectByName(String str);

	public Eqclass selectClassById(Integer eqClassId);

	public EquipmentTemp selectByPrimaryKeyTemp(Integer id);

	public void insertLease(Eqrental eqrental);

	public List<Eqrental> getRentalTempList(Integer userId);

	public Equipmentspend selectEqspendByPrimaryKey(Integer id);

	public Integer selectCountById(Integer id);

	public void insertReturn(String leId) throws ParseException;

	public List<EqreturnTemp> getEqreturnList(Integer userId);

	public List<Eqwarehouse> selectAllWarehouse();

	public void updateEq(Equipment equipment);

	public List<EquipmentTemp> selectAllEquipmentTemp();

	public void updateEqSpend(Equipmentspend equipmentspend);

	public Eqwarehouse selectEqwareByPrimaryKey(Integer id);

	public void updateEqWare(Eqwarehouse eqwarehouse);

	public void addEqWare(Eqwarehouse eqwarehouse);

	public void addEqClass(Eqclass eqclass);

	public void updateEqClass(Eqclass eqclass);

	public void addEqmaintain(Integer eqid, Integer eqcount);

	public List<Eqmaintain> selectAllEqmaintain();

	public void deleteEqmaintain(Integer eqid, Integer eqcount);

	public void deleteEquipment(Integer eqid, Integer eqcount);

	public Integer addNewEq(Equipment equipment);

	public List<Eqrental> selectAllEqrental();

	public List<Eqrental> selectAllEqrentalIsDone();

	public void dealEqlease(String id, Integer staffid);

	public List<EqreturnTemp> selectAllEqreturn();

	public List<EqreturnTemp> selectAllEqreturnIsDone();

	public Eqreturn getEqreturnById(String id);

	public Integer getEqreCount(String id);

	public void addEqexamine(Eqexamine eqexamine);

	public Eqexamine getEqexamine(String id);

	public void addEquipmentspend(Equipmentspend equipmentspend);

}
