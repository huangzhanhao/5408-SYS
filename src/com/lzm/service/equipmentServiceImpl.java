package com.lzm.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lzm.mapper.EquipmentMapper;
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

public class equipmentServiceImpl implements equipmentService {

	@Autowired
	private EquipmentMapper equipmentMapper;

	@Override
	public List<Equipment> selectAllEquipment() {
		return equipmentMapper.selectAllEquipment();
	}

	@Override
	public List<Eqclass> selectAllEqclass() {
		return equipmentMapper.selectAllEqclass();
	}

	@Override
	public List<Eqmaintain> selectAllEqmaintain() {
		return equipmentMapper.selectAllEqmaintain();
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
	public Eqclass selectClassById(Integer eqClassId) {
		return equipmentMapper.selectClassById(eqClassId);
	}

	@Override
	public EquipmentTemp selectByPrimaryKeyTemp(Integer id) {
		return equipmentMapper.selectByPrimaryKeyTemp(id);
	}

	@Override
	public void insertLease(Eqrental eqrental) {
		equipmentMapper.insertLease(eqrental);
	}

	@Override
	public List<Eqrental> getRentalTempList(Integer userId) {
		return equipmentMapper.selectRentalTempList(userId);
	}

	@Override
	public Equipmentspend selectEqspendByPrimaryKey(Integer id) {
		return equipmentMapper.selectEqspendByPrimaryKey(id);
	}

	@Override
	public Integer selectCountById(Integer id) {
		return equipmentMapper.selectCountById(id);
	}

	@Override
	@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED, readOnly = false)
	public void insertReturn(String leId) throws ParseException {
		equipmentMapper.setRental(leId);
		Eqrental eqrental = equipmentMapper.selectRentalById(leId);
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String tablename = dateFormat.format(now);
		eqrental.setEq_date_return(tablename);
		equipmentMapper.insertReturn(eqrental);
	}

	@Override
	public List<EqreturnTemp> getEqreturnList(Integer userId) {
		return equipmentMapper.getEqreturnList(userId);
	}

	@Override
	public List<Eqwarehouse> selectAllWarehouse() {
		return equipmentMapper.selectAllWarehouse();
	}

	@Override
	public void updateEq(Equipment equipment) {
		equipmentMapper.updateEq(equipment);
	}

	@Override
	public List<EquipmentTemp> selectAllEquipmentTemp() {
		return equipmentMapper.selectAllEquipmentTemp();
	}

	@Override
	public void updateEqSpend(Equipmentspend equipmentspend) {
		equipmentMapper.updateEqSpend(equipmentspend);
	}

	@Override
	public Eqwarehouse selectEqwareByPrimaryKey(Integer id) {
		return equipmentMapper.selectEqwareByPrimaryKey(id);
	}

	@Override
	public void updateEqWare(Eqwarehouse eqwarehouse) {
		equipmentMapper.updateEqWare(eqwarehouse);
	}

	@Override
	public void addEqWare(Eqwarehouse eqwarehouse) {
		equipmentMapper.addEqWare(eqwarehouse);
	}

	@Override
	public void addEqClass(Eqclass eqclass) {
		equipmentMapper.addEqClass(eqclass);
	}

	@Override
	public void updateEqClass(Eqclass eqclass) {
		equipmentMapper.updateEqClass(eqclass);
	}

	@Override
	@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED, readOnly = false)
	public void addEqmaintain(Integer eqid, Integer eqcount) {
		Eqmaintain eqmaintain = equipmentMapper.selectEqmaintainById(eqid);
		Equipment equipment = equipmentMapper.selectByPrimaryKey(eqid);
		// 更新器材空闲数量
		equipmentMapper.updateEqCount(eqid, eqcount);

		if (eqmaintain == null) {
			// 新增维护记录
			equipmentMapper.addEqmaintain(eqid, equipment.getEqName(), eqcount);
		} else {
			// 更新维护记录
			equipmentMapper.updateEqmaintain(eqid, eqcount);
		}
	}

	@Override
	@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED, readOnly = false)
	public void deleteEqmaintain(Integer eqid, Integer eqcount) {
		Eqmaintain eqmaintain = equipmentMapper.selectEqmaintainById(eqid);
		// 添加器材空闲数量
		equipmentMapper.updateEqCount(eqid, -eqcount);
		if ((eqmaintain.getEq_maincount() - eqcount) == 0) {
			// 如果全部都提交完成维护，就删除这条记录
			equipmentMapper.deleteEqmaintain(eqid);
		} else {
			equipmentMapper.updateEqmaintain(eqid, -eqcount);
		}
	}

	@Override
	public void deleteEquipment(Integer eqid, Integer eqcount) {
		// 总数和空闲数都要减
		equipmentMapper.deleteEquipment(eqid, eqcount);
	}

	@Override
	public Integer addNewEq(Equipment equipment) {
		equipmentMapper.addNewEq(equipment);
		return equipmentMapper.findMaxID();
	}

	@Override
	public List<Eqrental> selectAllEqrental() {
		return equipmentMapper.selectAllEqrental();
	}

	@Override
	public List<Eqrental> selectAllEqrentalIsDone() {
		return equipmentMapper.selectAllEqrentalIsDone();
	}

	@Override
	public void dealEqlease(String id, Integer staffid) {
		equipmentMapper.dealEqlease(id, staffid);
	}

	@Override
	public List<EqreturnTemp> selectAllEqreturn() {
		return equipmentMapper.selectAllEqreturn();
	}

	@Override
	public List<EqreturnTemp> selectAllEqreturnIsDone() {
		return equipmentMapper.selectAllEqreturnIsDone();
	}

	@Override
	public Eqreturn getEqreturnById(String id) {
		return equipmentMapper.getEqreturnById(id);
	}

	@Override
	public Integer getEqreCount(String id) {
		return equipmentMapper.getEqreCount(id);
	}

	/*
	 * 新增审核记录(最后) 修改器材表空闲数量 计算罚款
	 */
	@Override
	@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED, readOnly = false)
	public void addEqexamine(Eqexamine eqexamine) {
		if (eqexamine.getEq_staff_id() == null) {
			return;
		}
		// 修改报废表（如果有损坏、丢失）
		equipmentMapper.deleteEquipment(eqexamine.getEq_id(),
				eqexamine.getEq_num_damage() + eqexamine.getEq_num_lose());
		// 计算是否逾期
		String eq_return_date = equipmentMapper.getEqreturnById(eqexamine.getEq_ex_id()).getEq_return_date();
		System.out.println(eq_return_date);
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date re_date = df.parse(eq_return_date);
			Date nowDate = new Date();
			if (re_date.getTime() > nowDate.getTime()) {// 为逾期
				eqexamine.setEq_overdue(false);
			} else {// 逾期
				eqexamine.setEq_overdue(true);
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		// * 修改归还表为已审核
		equipmentMapper.updateEqreturnToExam(eqexamine.getEq_ex_id());
		// 修改器材表空闲数量
		Integer eq_count = equipmentMapper.selectRentalById(eqexamine.getEq_ex_id()).getEq_count();
		equipmentMapper.updateEqCount(eqexamine.getEq_id(),
				-(eq_count - eqexamine.getEq_num_damage() - eqexamine.getEq_num_lose()));
		// 计算罚款
		Equipmentspend equipmentspend = equipmentMapper.selectEqspendByPrimaryKey(eqexamine.getEq_id());
		float eq_publish = eqexamine.getEq_num_damage() * equipmentspend.getEq_damage()
				+ eqexamine.getEq_num_lose() * equipmentspend.getEq_lose();
		if (eqexamine.getEq_overdue()) {
			eq_publish = eq_publish + equipmentspend.getEq_overdue();
		}
		eqexamine.setEq_publish(eq_publish);
		// 新增审核记录
		equipmentMapper.addEqexamine(eqexamine);
	}

	@Override
	public Eqexamine getEqexamine(String id) {
		return equipmentMapper.getEqexamine(id);
	}

	@Override
	public void addEquipmentspend(Equipmentspend equipmentspend) {
		equipmentMapper.addEquipmentspend(equipmentspend);

	}

}
