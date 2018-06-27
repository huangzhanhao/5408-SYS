package com.lzm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzm.mapper.ltcOrdinaryRoleMapper;
import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;

@Service 
public class ltcOrdinaryRoleImpl implements ltcOrdinaryRoleService{
	@Autowired  
    private ltcOrdinaryRoleMapper roleDao; 
	//注册用户
	@Override
    public void register(ltcOrdinaryRole role) {  
        // TODO Auto-generated method stub  
        roleDao.addRole(role);
    } 
	//查询普通用户
	@Override
    public List<ltcOrdinaryRole> selectOrdiaryRole() {  
        // TODO Auto-generated method stub  
        return roleDao.queryOrdinaryRole();
    } 
    //查询管理员用户
    @Override
    public List<ltcManageRole> selectManageRole() {  
        // TODO Auto-generated method stub  
        return roleDao.queryManageRole();
    } 
    //提交报告
    @Override
    public void insertAnno(callBoard anno) {  
        // TODO Auto-generated method stub  
        roleDao.addAnno(anno);
    } 
    //查询公告
    @Override
    public List<callBoard> selectAnno() {  
        // TODO Auto-generated method stub  
        return roleDao.queryAnno();
    } 
}
