package com.lzm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lzm.pojo.Eqclass;
import com.lzm.pojo.callBoard;
import com.lzm.pojo.ltcManageRole;
import com.lzm.pojo.ltcOrdinaryRole;
import com.lzm.pojo.ltcSuperRole;
import com.lzm.service.ltcOrdinaryRoleService;

@Controller
public class user_login_controller {

	// Service
	@Autowired
	private ltcOrdinaryRoleService roleService;

	@RequestMapping("/ltc_tologin.action")
	public String login(HttpServletRequest request, String username, String password, String userType, Model model) {
		System.out.println(username);
		if ("ordinary".equals(userType)) {
			List<ltcOrdinaryRole> list = roleService.selectOrdiaryRole();
			for (int i = 0; i < list.size(); i++) {
				ltcOrdinaryRole s = (ltcOrdinaryRole) list.get(i);
				System.out.println(s.getId() + "," + s.getUsername() + "," + s.getStudentID() + "," + s.getPassword()
						+ "," + s.getCollege());
				if (s.getStudentID().equals(username) && s.getPassword().equals(password)) {
					request.getSession().setAttribute("username", s.getUsername());
					request.getSession().setAttribute("userid", s.getId());
					request.getSession().setAttribute("studentID", s.getStudentID());
					model.addAttribute("userList", s);
					return "index";
				}
			}
			model.addAttribute("error", "登录失败！请检查账号和密码！");
			return "/html/ltc_gymManage/login";
		} else if ("manage".equals(userType)) {
			List<ltcManageRole> list = roleService.selectManageRole();
			for (int i = 0; i < list.size(); i++) {
				ltcManageRole s = (ltcManageRole) list.get(i);
				System.out.println(s.getId() + "," + s.getUsername() + "," + s.getControllerID() + "," + s.getStatus()
						+ "," + s.getContactWay());
				if (s.getControllerID().equals(username) && s.getPassword().equals(password)) {
					request.getSession().setAttribute("manage", s);
					if ("场地管理员".equals(s.getStatus())) {
						return "/html/hzh_gymManage/FieldList";
					} else if ("赛事管理员".equals(s.getStatus())) {
						return "/html/lth_gymManage/SSCX";
					} else if ("器材管理员".equals(s.getStatus())) {
						request.getSession().setAttribute("username", s.getUsername());
						request.getSession().setAttribute("userid", s.getId());
						return "forward: /getEquipment.action";
					} else {
						model.addAttribute("error", "登录失败！请检查账号和密码！");
						return "/html/ltc_gymManage/login";
					}
				}
			}
			model.addAttribute("error", "登录失败！请检查账号和密码！");
			return "/html/ltc_gymManage/login";
		} else if ("super".equals(userType)) {
			List<ltcSuperRole> list = roleService.selectSuperRole();
			for (int i = 0; i < list.size(); i++) {
				ltcSuperRole s = (ltcSuperRole) list.get(i);
				System.out.println(s.getId() + "," + s.getAccount() + "," + s.getPassword() + "," + s.getCreateTime());
				if (s.getAccount().equals(username) && s.getPassword().equals(password)) {
					return "/html/ltc_superManage/query_ordinary_role";
				}
			}
			model.addAttribute("error", "登录失败！请选择用户类型！");
			return "/html/ltc_gymManage/login";
		} else {
			model.addAttribute("error", "登录失败！请选择用户类型！");
			return "/html/ltc_gymManage/login";
		}
	}

	// 注册用户
	@RequestMapping("/ltc_register.action")
	public String addRole(ltcOrdinaryRole role, Model model) {

		System.out.println("用户名:" + role.getUsername() + "密码：" + role.getPassword() + "学院：" + role.getCollege());
		roleService.register(role);
		return "/html/ltc_superManage/query_ordinary_role";
	}

	// 注册用户，超级管理员页面
	@RequestMapping("/ltc_register2.action")
	public String addRole2(ltcManageRole role, Model model) {
		System.out.println("用户名:" + role.getUsername() + "密码：" + role.getPassword() + "职位：" + role.getStatus());
		roleService.registerManage(role);
		return "/html/ltc_superManage/query_manage_role";
	}

	// 删除普通用户
	@RequestMapping("/ltc_ordinary_delete.action")
	public String deleteOrdinaryRole(ltcOrdinaryRole role, Model model) {
		System.out.println("学号：" + role.getStudentID());
		roleService.deleteOrdinaryUser(role.getStudentID());
		return "/html/ltc_superManage/query_ordinary_role";
	}

	// 删除管理员
	@RequestMapping("/ltc_manage_delete.action")
	public String deleteManageRole(ltcManageRole role, Model model) {
		System.out.println("学号：" + role.getControllerID());
		roleService.deleteManageUser(role.getControllerID());
		return "/html/ltc_superManage/query_manage_role";
	}

	// 修改普通用户信息
	@RequestMapping("/ltc_ordinary_update.action")
	public String updateOrdinaryRole(ltcOrdinaryRole role, Model model) {
		System.out.println("用户名:" + role.getUsername() + "密码：" + role.getPassword() + "学院：" + role.getCollege());
		roleService.updateOrdinaryUser(role);
		return "/html/ltc_superManage/query_ordinary_role";
	}

	// 修改普通用户密码
	@RequestMapping("/ltc_ordinary_updatePassword.action")
	public String updateOrdinaryRolePassword(String studentID, String password1, String password2, String password3,
			Model model) {
		System.out.println("用户名:" + studentID + "," + password1 + "," + password2 + "," + password3);
		if (password2.equals(password3)) {
			roleService.updateOrdinaryUserPassword(password1, studentID);
			model.addAttribute("success", "修改成功！");
			return "/html/ltc_gymManage/update_ordinary_roleInHomepage";
		} else {
			model.addAttribute("error", "修改失败！请检查新密码是否一致");
			return "/html/ltc_gymManage/update_ordinary_rolePassword";
		}
	}

	// 修改管理员信息
	@RequestMapping("/ltc_manage_update.action")
	public String updateManageRole(ltcManageRole role, Model model) {
		System.out.println("用户名:" + role.getUsername() + "密码：" + role.getPassword() + "员工号：" + role.getControllerID());
		roleService.updateManageUser(role);
		return "/html/ltc_superManage/query_manage_role";
	}

	// 通过ID查询普通用户
	@RequestMapping("/ltc_ordinary_queryByID.action")
	public String queryByIDOrdinaryRole(ltcOrdinaryRole role, Model model) {
		ltcOrdinaryRole list = roleService.selectByIDOrdinaryRole(role.getStudentID());
		model.addAttribute("ordinaryUserList", list);
		System.out.println(list.getUsername() + "," + list.getStudentID());
		return "/html/ltc_superManage/update_ordinary_role";
	}

	// 通过ID查询普通用户,用户首页
	@RequestMapping("/ltc_ordinary_queryByIDInHomepage.action")
	public String queryByIDOrdinaryRoleInHomepage(ltcOrdinaryRole role, Model model) {
		ltcOrdinaryRole list = roleService.selectByIDOrdinaryRole(role.getStudentID());
		System.out.println(role.getStudentID());
		model.addAttribute("ordinaryUserList", list);
		System.out.println(list.getUsername() + "," + list.getStudentID());
		return "/html/ltc_gymManage/update_ordinary_roleInHomepage";
	}

	// 通过ID查询管理员
	@RequestMapping("/ltc_manage_queryByID.action")
	public String queryByIDManageRole(ltcManageRole role, Model model) {
		ltcManageRole list = roleService.selectByIDManageRole(role.getControllerID());
		model.addAttribute("manageUserList", list);
		System.out.println(list.getUsername() + "," + list.getControllerID());
		return "/html/ltc_superManage/update_manage_role";
	}

	// 查询普通用户
	@RequestMapping("/ltc_ordinary_query.action")
	public String queryOrdinaryRole(ltcOrdinaryRole role, Model model) {
		List<ltcOrdinaryRole> list = roleService.selectOrdiaryRole();
		model.addAttribute("ordinaryUserList", list);
		for (int i = 0; i < list.size(); i++) {
			ltcOrdinaryRole s = (ltcOrdinaryRole) list.get(i);
			System.out.println(s.getId() + "," + s.getUsername() + "," + s.getStudentID() + "," + s.getGrade() + ","
					+ s.getCollege());
		}
		return "/html/ltc_gymManage/ordinary_userList_body";
	}

	// 查询普通用户，超级管理员页面
	@RequestMapping("/ltc_ordinary_query2.action")
	public String queryOrdinaryRole2(ltcOrdinaryRole role, Model model) {
		List<ltcOrdinaryRole> list = roleService.selectOrdiaryRole();
		model.addAttribute("ordinaryUserList", list);
		for (int i = 0; i < list.size(); i++) {
			ltcOrdinaryRole s = (ltcOrdinaryRole) list.get(i);
			System.out.println(s.getId() + "," + s.getUsername() + "," + s.getStudentID() + "," + s.getGrade() + ","
					+ s.getCollege());
		}
		return "/html/ltc_superManage/query_ordinary_role";
	}

	// 查询管理员
	@RequestMapping("/ltc_manage_query.action")
	public String queryManageRole(ltcManageRole role, Model model) {
		List<ltcManageRole> list = roleService.selectManageRole();
		model.addAttribute("manageUserList", list);
		for (int i = 0; i < list.size(); i++) {
			ltcManageRole s = (ltcManageRole) list.get(i);
			System.out.println(s.getId() + "," + s.getUsername() + "," + s.getControllerID() + "," + s.getStatus() + ","
					+ s.getContactWay());
		}
		return "/html/ltc_gymManage/gym_userList_body";
	}

	// 查询管理员2，超级管理员页面
	@RequestMapping("/ltc_manage_query2.action")
	public String queryManageRole2(ltcManageRole role, Model model) {
		List<ltcManageRole> list = roleService.selectManageRole();
		model.addAttribute("manageUserList", list);
		for (int i = 0; i < list.size(); i++) {
			ltcManageRole s = (ltcManageRole) list.get(i);
			System.out.println(s.getId() + "," + s.getUsername() + "," + s.getControllerID() + "," + s.getStatus() + ","
					+ s.getContactWay());
		}
		return "/html/ltc_superManage/query_manage_role";
	}

	// 提交公告
	@RequestMapping("/ltc_toInsertAnno.action")
	public String addAnno(callBoard anno, Model model) {
		System.out.println(anno.getAnno());
		roleService.insertAnno(anno);
		return "/html/ltc_gymManage/call_board";
	}

	// 查询公告
	@RequestMapping("/ltc_anno_queryInHomepage.action")
	public String queryAnnoInHomepage(callBoard anno, Model model) {
		List<callBoard> list = roleService.selectAnno();
		model.addAttribute("annoList", list);
		for (int i = 0; i < list.size(); i++) {
			callBoard s = (callBoard) list.get(i);
			System.out.println(s.getAnno() + "," + s.getCreateTime());
		}
		return "index";
	}

	// 查询公告
	@RequestMapping("/ltc_anno_query.action")
	public String queryAnno(callBoard anno, Model model) {
		List<callBoard> list = roleService.selectAnno();
		model.addAttribute("annoList", list);
		for (int i = 0; i < list.size(); i++) {
			callBoard s = (callBoard) list.get(i);
			System.out.println(s.getAnno() + "," + s.getCreateTime());
		}
		return "/html/ltc_gymManage/call_board";
	}

	// 删除管理员
	@RequestMapping("/ltc_anno_delete.action")
	public String deleteAnno(callBoard anno, Model model) {

		roleService.deleteCallBoard(anno.getId());
		return "/html/ltc_gymManage/call_board";
	}

	// 查询超级管理员
	@RequestMapping("/ltc_super_query.action")
	public String querySuperRole(ltcSuperRole role, Model model) {
		List<ltcSuperRole> list = roleService.selectSuperRole();
		model.addAttribute("superUserList", list);
		for (int i = 0; i < list.size(); i++) {
			ltcSuperRole s = (ltcSuperRole) list.get(i);
			System.out.println(s.getId() + "," + s.getAccount() + "," + s.getPassword() + "," + s.getCreateTime());
		}
		return "/html/ltc_superManage/query_super_role";
	}

	// 注册超级管理员
	@RequestMapping("/ltc_register_super.action")
	public String addSuperRole(ltcSuperRole role, Model model) {
		System.out.println("用户名:" + role.getAccount() + "密码：" + role.getPassword() + "创建时间：" + role.getCreateTime());
		roleService.registerSuper(role);
		return "/html/ltc_superManage/query_super_role";
	}

	// 删除管理员
	@RequestMapping("/ltc_super_delete.action")
	public String deleteSuperRole(ltcSuperRole role, Model model) {
		System.out.println("学号：" + role.getAccount());
		roleService.deleteSuperUser(role.getAccount());
		return "/html/ltc_superManage/query_super_role";
	}
}
