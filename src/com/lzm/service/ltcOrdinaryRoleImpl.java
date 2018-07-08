package com.lzm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzm.mapper.ltcOrdinaryRoleMapper;
import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;
import com.lzm.pojo.ltcSuperRole;

@Service
public class ltcOrdinaryRoleImpl implements ltcOrdinaryRoleService {
	@Autowired
	private ltcOrdinaryRoleMapper roleDao;

	// 注册用户
	@Override
	public void register(ltcOrdinaryRole role) {
		// TODO Auto-generated method stub
		roleDao.addRole(role);
	}

	// 注册管理员
	@Override
	public void registerManage(ltcManageRole role) {
		// TODO Auto-generated method stub
		roleDao.addManageRole(role);
	}

	// 查询普通用户
	@Override
	public List<ltcOrdinaryRole> selectOrdiaryRole() {
		// TODO Auto-generated method stub
		return roleDao.queryOrdinaryRole();
	}

	// 查询管理员用户
	@Override
	public List<ltcManageRole> selectManageRole() {
		// TODO Auto-generated method stub
		return roleDao.queryManageRole();
	}

	// 提交报告
	@Override
	public void insertAnno(callBoard anno) {
		// TODO Auto-generated method stub
		roleDao.addAnno(anno);
	}

	// 查询公告
	@Override
	public List<callBoard> selectAnno() {
		// TODO Auto-generated method stub
		return roleDao.queryAnno();
	}

	// 删除公告
	public void deleteCallBoard(int id) {
		roleDao.deleteAnno(id);
	}

	// 删除普通用户
	@Override
	public void deleteOrdinaryUser(String studentID) {
		// TODO Auto-generated method stub
		roleDao.deleteOrdinaryRole(studentID);
	}

	// 删除管理员
	@Override
	public void deleteManageUser(String controllerID) {
		// TODO Auto-generated method stub
		roleDao.deleteManageRole(controllerID);
	}

	// 通过ID查询普通用户
	public ltcOrdinaryRole selectByIDOrdinaryRole(String studentID) {
		return roleDao.queryByIDOrdinaryRole(studentID);
	}

	// 通过ID查询管理员
	public ltcManageRole selectByIDManageRole(String controllerID) {
		return roleDao.queryByIDManageRole(controllerID);
	}

	// 修改普通用户信息
	public void updateOrdinaryUser(ltcOrdinaryRole role) {
		roleDao.updateOrdinaryRole(role);
	}

	// 修改普通用户密码
	public void updateOrdinaryUserPassword(String password, String studentID) {
		roleDao.updateOrdinaryRolePassword(password, studentID);
	}

	// 修改管理员信息
	public void updateManageUser(ltcManageRole role) {
		roleDao.updateManageRole(role);
	}

	// 查询超级管理员
	public List<ltcSuperRole> selectSuperRole() {
		return roleDao.querySuperRole();
	};

	// 注册超级管理员
	@Override
	public void registerSuper(ltcSuperRole role) {
		// TODO Auto-generated method stub
		roleDao.addSuperRole(role);
	}

	// 删除管理员
	@Override
	public void deleteSuperUser(String account) {
		// TODO Auto-generated method stub
		roleDao.deleteSuperRole(account);
	}
}
