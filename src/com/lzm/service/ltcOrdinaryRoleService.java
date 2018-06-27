package com.lzm.service;

import java.util.List;

import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;

public interface ltcOrdinaryRoleService {
	//注册用户
    void register(ltcOrdinaryRole role);
    //查询普通用户
    public List<ltcOrdinaryRole> selectOrdiaryRole();
    //查询管理员用户
    public List<ltcManageRole> selectManageRole();
    //提交报告
    void insertAnno(callBoard anno);
    //查询公告
    public List<callBoard> selectAnno();
}
