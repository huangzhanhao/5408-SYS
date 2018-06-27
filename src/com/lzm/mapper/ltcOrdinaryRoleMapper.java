package com.lzm.mapper;

import java.util.List;

import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;

public interface ltcOrdinaryRoleMapper {
	//增加普通用户
    public void addRole(ltcOrdinaryRole role);
    //查询普通用户
     List<ltcOrdinaryRole> queryOrdinaryRole();
     //查询管理员用户
     List<ltcManageRole> queryManageRole();
     //提交公告
     public void addAnno(callBoard anno);
     //查询公告
     List<callBoard> queryAnno();
}
