package com.lzm.mapper;

import java.sql.Date;
import java.util.List;

import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;
import com.lzm.pojo.ltcSuperRole;

public interface ltcOrdinaryRoleMapper {
	// 增加普通用户
	public void addRole(ltcOrdinaryRole role);

	// 增加管理员
	public void addManageRole(ltcManageRole role);

	// 查询普通用户
	List<ltcOrdinaryRole> queryOrdinaryRole();

	// 查询管理员用户
	List<ltcManageRole> queryManageRole();

	// 提交公告
	public void addAnno(callBoard anno);

	// 查询公告
	List<callBoard> queryAnno();

	// 删除公告
	public void deleteAnno(int id);

	// 删除普通用户
	public void deleteOrdinaryRole(String studentID);

	// 删除管理员
	public void deleteManageRole(String controllerID);

	// 通过ID查询普通用户
	public ltcOrdinaryRole queryByIDOrdinaryRole(String studentID);

	// 通过ID查询管理员
	public ltcManageRole queryByIDManageRole(String controllerID);

	// 修改普通用户信息
	public void updateOrdinaryRole(ltcOrdinaryRole role);

	// 修改普通用户密码
	public void updateOrdinaryRolePassword(String password, String studentID);

	// 修改管理员信息
	public void updateManageRole(ltcManageRole role);

	// 查询超级管理员
	List<ltcSuperRole> querySuperRole();

	// 增加超级管理员
	public void addSuperRole(ltcSuperRole role);

	// 删除超级管理员
	public void deleteSuperRole(String account);
}
