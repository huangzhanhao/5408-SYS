package com.lzm.mapper;

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

public interface EquipmentMapper {
	List<Eqclass> selectAllEqclass();

	Eqclass selectClassById(Integer eqClassId);

	Equipment selectByPrimaryKey(Integer eqId);

	EquipmentTemp selectByPrimaryKeyTemp(Integer eqId);

	List<Equipment> selectAllEquipment();

	List<Equipment> selectByName(String str);

	void insertLease(Eqrental eqrental);

	List<Eqrental> selectRentalTempList(Integer id);

	Equipmentspend selectEqspendByPrimaryKey(Integer id);

	Integer selectCountById(Integer id);

	void setRental(String leId);

	void insertReturn(Eqrental eqrental);

	Eqrental selectRentalById(String leId);

	List<EqreturnTemp> getEqreturnList(Integer userId);

	List<Eqwarehouse> selectAllWarehouse();

	void updateEq(Equipment equipment);

	List<EquipmentTemp> selectAllEquipmentTemp();

	void updateEqSpend(Equipmentspend equipmentspend);

	Eqwarehouse selectEqwareByPrimaryKey(Integer id);

	void updateEqWare(Eqwarehouse eqwarehouse);

	void addEqWare(Eqwarehouse eqwarehouse);

	void addEqClass(Eqclass eqclass);

	void updateEqClass(Eqclass eqclass);

	Eqmaintain selectEqmaintainById(Integer eqid);

	void updateEqCount(Integer eqid, Integer eqcount);

	void addEqmaintain(Integer eqid, String eqname, Integer eqcount);

	void updateEqmaintain(Integer eqid, Integer eqcount);

	List<Eqmaintain> selectAllEqmaintain();

	void deleteEqmaintain(Integer eqid);

	void deleteEquipment(Integer eqid, Integer eqcount);

	void addNewEq(Equipment equipment);

	List<Eqrental> selectAllEqrental();

	List<Eqrental> selectAllEqrentalIsDone();

	void dealEqlease(String id, Integer staffid);

	List<EqreturnTemp> selectAllEqreturn();

	List<EqreturnTemp> selectAllEqreturnIsDone();

	Eqreturn getEqreturnById(String id);

	Integer getEqreCount(String id);

	void updateEqreturnToExam(String eq_ex_id);

	void addEqexamine(Eqexamine eqexamine);

	Eqexamine getEqexamine(String id);

	void addEquipmentspend(Equipmentspend equipmentspend);

	Integer findMaxID();

}