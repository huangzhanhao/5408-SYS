package com.lzm.service;

import java.util.List;

import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;
import com.lzm.pojo.ltcSuperRole;

public interface ltcOrdinaryRoleService {
	// 注册用户
	void register(ltcOrdinaryRole role);

	// 注册管理员
	void registerManage(ltcManageRole role);

	// 查询普通用户
	public List<ltcOrdinaryRole> selectOrdiaryRole();

	// 查询管理员用户
	public List<ltcManageRole> selectManageRole();

	// 提交报告
	void insertAnno(callBoard anno);

	// 查询公告
	public List<callBoard> selectAnno();

	// 删除公告
	void deleteCallBoard(int id);

	// 删除用户
	void deleteOrdinaryUser(String studentID);

	// 删除管理员
	void deleteManageUser(String controllerID);

	// 通过ID查询普通用户
	public ltcOrdinaryRole selectByIDOrdinaryRole(String studentID);

	// 通过ID查询管理员
	public ltcManageRole selectByIDManageRole(String controllerID);

	// 修改普通用户信息
	void updateOrdinaryUser(ltcOrdinaryRole role);

	// 修改普通用户密码
	void updateOrdinaryUserPassword(String password, String studentID);

	// 修改普通用户信息
	void updateManageUser(ltcManageRole role);

	// 查询超级管理员
	public List<ltcSuperRole> selectSuperRole();

	// 注册超级管理员
	void registerSuper(ltcSuperRole role);

	// 删除管理员
	void deleteSuperUser(String account);
}
