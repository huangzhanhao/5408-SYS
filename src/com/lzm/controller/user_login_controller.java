package com.lzm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lzm.pojo.Eqclass;
import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;
import com.lzm.service.ltcOrdinaryRoleService;

@Controller
public class user_login_controller {
	
	//Service  
    @Autowired  
    private ltcOrdinaryRoleService roleService; 
    
	@RequestMapping("/ltc_tologin.action")
    public String login(String username,String password,Model model){
        if ("cenmen".equals(username)&&"123123123".equals(password)) {
            return "/html/ltc_gymManage/ordinary_userList_body";
        }else {
        	model.addAttribute("error", "登录失败！请检查账号和密码！");
        	return "/html/ltc_gymManage/login";
        }
    }
	//注册用户
	@RequestMapping("/ltc_register.action")  
    public String addRole(ltcOrdinaryRole role,Model model){  
          
        System.out.println("用户名:"+role.getUsername()+"密码："+role.getPassword()+"学院："+role.getCollege());  
        roleService.register(role);
        return "/html/ltc_gymManage/call_board";  
    }
	//查询普通用户
	@RequestMapping("/ltc_ordinary_query.action")  
    public String queryOrdinaryRole(ltcOrdinaryRole role,Model model){  
		List<ltcOrdinaryRole> list=roleService.selectOrdiaryRole();
		model.addAttribute("ordinaryUserList", list);
		for (int i = 0; i < list.size(); i++) {
			ltcOrdinaryRole s =(ltcOrdinaryRole)list.get(i);
            System.out.println(s.getId()+","+s.getUsername()+","+s.getStudentID()+","+s.getGrade()+","+s.getCollege());
        }
        return "/html/ltc_gymManage/ordinary_userList_body";  
    }
	//查询管理员
	@RequestMapping("/ltc_manage_query.action")  
    public String queryManageRole(ltcManageRole role,Model model){  
		List<ltcManageRole> list=roleService.selectManageRole();
		model.addAttribute("manageUserList", list);
		for (int i = 0; i < list.size(); i++) {
			ltcManageRole s =(ltcManageRole)list.get(i);
            System.out.println(s.getId()+","+s.getUsername()+","+s.getControllerID()+","+s.getStatus()+","+s.getContactWay());
        }
        return "/html/ltc_gymManage/gym_userList_body";  
    }
	//提交公告
	@RequestMapping("/ltc_toInsertAnno.action")
    public String addAnno(callBoard anno,Model model){
		 System.out.println(anno.getAnno());
		roleService.insertAnno(anno);
        return "/html/ltc_gymManage/call_board";  
    }
	//查询公告
	@RequestMapping("/ltc_anno_query.action")  
    public String queryAnno(callBoard anno,Model model){  
		List<callBoard> list=roleService.selectAnno();
		model.addAttribute("annoList", list);
		for (int i = 0; i < list.size(); i++) {
			callBoard s =(callBoard)list.get(i);
            System.out.println(s.getAnno()+","+s.getCreateTime());
        }
        return "/html/ltc_gymManage/call_board";  
    }
}
