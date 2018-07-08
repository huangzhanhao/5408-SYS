package com.lzm.controller;

import java.text.ParseException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
import com.lzm.service.equipmentService;

@Controller
public class equipment_query_controller {
	@Autowired
	private equipmentService equipmentService;

	// 主页请求进入租借页面，返回器材的分类数据
	@RequestMapping(value = "/toQueryPage.action")
	public String toQueryPage(Model model) {
		List<Eqclass> list = equipmentService.selectAllEqclass();
		model.addAttribute("eqcList", list);
		return "/html/lzm_gymManage/equipment-query";
	}

	@RequestMapping(value = "/test.action")
	public String test(Model model) {
		model.addAttribute("style", "weihu");
		return "/html/lzm_gymManage/equipment-index-manager";
	}

	// 暂时弃用
	/*
	 * @RequestMapping(value = "/getEquipment.action") public String
	 * getEquipment(Integer id,Model model){ //数据 Equipment list =
	 * equipmentService.selectByPrimaryKey(id); model.addAttribute("eqList",
	 * list); return "/html/equipment-query"; }
	 */
	// 搜索器材，返回器材列表
	@RequestMapping(value = "/toSearch.action")
	public String toSearch(String str, Model model) {
		// 数据
		List<Equipment> list = equipmentService.selectByName(str);
		model.addAttribute("eqList", list);
		return "/html/lzm_gymManage/equipment-search";
	}

	//
	@RequestMapping(value = "/toCheckdetail.action", method = RequestMethod.GET)
	public String toCheckdetail(Integer id, Model model) {
		// 数据
		Equipmentspend equipment = equipmentService.selectEqspendByPrimaryKey(id);
		model.addAttribute("eqs", equipment);
		return "/html/lzm_gymManage/equipment-checkdetail";
	}

	// Ajax请求，返回器材收费标准
	@RequestMapping(value = "/getDetail.action")
	public @ResponseBody Equipmentspend getDetail(Integer id) {
		// 数据
		Equipmentspend equipment = equipmentService.selectEqspendByPrimaryKey(id);
		return equipment;
	}

	// 点击了租借按钮，跳转租借表单页面，需要返回：器材id，器材租金，器材押金
	@RequestMapping(value = "/toLeasePage.action")
	public String toLease(Integer id, Integer deposit, Integer price, Model model) {
		// 接收数据：器材ID，器材剩余数量,租金，押金
		Integer count = equipmentService.selectCountById(id);
		System.out.println(id);
		System.out.println(deposit);
		System.out.println(price);
		System.out.println(count);
		model.addAttribute("eq_deposit", deposit);
		model.addAttribute("id", id);
		model.addAttribute("count", count);
		model.addAttribute("eq_price", price);
		return "/html/lzm_gymManage/equipment-lease";
	}

	// 提交租借表单，返回主页
	@RequestMapping(value = "/submitLease.action")
	public String submitLease(Eqrental eqrental, Model model) {
		String uuid = UUID.randomUUID().toString().replace("-", "").toLowerCase();
		eqrental.setEq_lease_id(uuid);
		eqrental.setEq_isreturn(false);
		equipmentService.insertLease(eqrental);
		return "/html/lzm_gymManage/equipment-jumppage";
	}

	// 跳转到归还页面，返回租借未归还的数据.以及未处理的归还单子
	@RequestMapping(value = "/toReturnPage.action")
	public String toReturnPage(Integer userId, Model model) {
		List<Eqrental> rentalList = equipmentService.getRentalTempList(userId);
		List<EqreturnTemp> eqreturns = equipmentService.getEqreturnList(userId);
		model.addAttribute("lists", rentalList);
		model.addAttribute("eqreturns", eqreturns);
		return "/html/lzm_gymManage/equipment-return";
	}

	// 插入归还记录，设置归还状态
	@RequestMapping(value = "/setReturn.action")
	public String setReturn(HttpServletRequest request, String leId, Model model) {
		int attribute = (Integer) request.getSession().getAttribute("userid");
		System.out.println(attribute);
		try {
			equipmentService.insertReturn(leId);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return "forward: /toReturnPage.action?userId=1";
	}

	// 临时代用登陆--黎子明
	@RequestMapping(value = "/loginChanger.action")
	public String loginChanger(HttpServletRequest request, String username, String password, String userType,
			Model model) {
		request.getSession().setAttribute("username", username);
		if (userType.equals("A")) {
			request.getSession().setAttribute("userid", 1);
			return "/html/lzm_gymManage/equipment-index-user";
		} else if (userType.equals("B")) {
			request.getSession().setAttribute("userid", 123);
			return "forward: /getEquipment.action";
		} else if (userType.equals("C")) {
			return "/html/lzm_gymManage/equipment-index-user";
		}
		return "/html/ltc_gymManage/login";
	}

	/*
	 * 下面都是管理员的请求
	 */
	// 返回器材列表
	@RequestMapping(value = "/getEquipment.action")
	public String getEquipment(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "修改成功";
		}
		List<Equipment> list = equipmentService.selectAllEquipment();
		model.addAttribute("eqList", list);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-info";
	}

	// 返回器材列表给报废页面用
	@RequestMapping(value = "/getEquipmentfordelete.action")
	public String getEquipmentfordelete(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "已提交报废";
		}
		List<Equipment> list = equipmentService.selectAllEquipment();
		model.addAttribute("eqList", list);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-delete";
	}

	// 返回器材列表,还有现在维护的列表，给维护页用的
	@RequestMapping(value = "/getEquipmentforweihu.action")
	public String getEquipmentforweihu(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "修改成功";
		} else if (msg != null && msg == 2) {
			msgStr = "已提交维护";
		} else if (msg != null && msg == 3)
			msgStr = "已提交完成维护";
		List<Equipment> list = equipmentService.selectAllEquipment();
		List<Eqmaintain> eqmaintains = equipmentService.selectAllEqmaintain();
		model.addAttribute("eqList", list);
		model.addAttribute("eqq", eqmaintains);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-weihu";
	}

	// 返回器材列表给收费标准做个表面功夫
	@RequestMapping(value = "/getEqForcharge.action")
	public String getEqForcharge(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "修改成功";
		} else if (msg != null && msg == 2)
			msgStr = "添加成功";
		List<EquipmentTemp> list = equipmentService.selectAllEquipmentTemp();
		model.addAttribute("eqList", list);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-charge";
	}

	// 返回器材列表给收费标准做个表面功夫
	@RequestMapping(value = "/getEquipmentforadd.action")
	public String getEquipmentforadd(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "添加成功";
		} else if (msg != null && msg == 2)
			msgStr = "请不要随意填写表单";
		List<EquipmentTemp> list = equipmentService.selectAllEquipmentTemp();
		List<Eqclass> eqc = equipmentService.selectAllEqclass();
		List<Eqwarehouse> eqw = equipmentService.selectAllWarehouse();
		model.addAttribute("eqList", list);
		model.addAttribute("eqw", eqw);
		model.addAttribute("eqc", eqc);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-add";
	}

	// 返回器材仓库供选择
	@RequestMapping(value = "/getEqWare.action")
	public String getEqWare(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "修改成功";
		} else if (msg != null && msg == 2)
			msgStr = "添加成功";
		List<Eqwarehouse> list = equipmentService.selectAllWarehouse();
		model.addAttribute("eqw", list);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-ware";
	}

	// 返回器材分类供选择
	@RequestMapping(value = "/getEqClass.action")
	public String getEqClas(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "修改成功";
		} else if (msg != null && msg == 2)
			msgStr = "添加成功";
		List<Eqclass> list = equipmentService.selectAllEqclass();
		model.addAttribute("eqc", list);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-class";
	}

	// 返回器材租借单号，分别为已经处理的和未处理的
	@RequestMapping(value = "/getEqrental.action")
	public String getEqrental(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "提交成功";
		}
		List<Eqrental> undone = equipmentService.selectAllEqrental();
		List<Eqrental> done = equipmentService.selectAllEqrentalIsDone();
		model.addAttribute("undone", undone);
		model.addAttribute("done", done);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-zujie";
	}

	// 返回器材归还申请单号
	@RequestMapping(value = "/getEqreturn.action")
	public String getEqreturn(Integer msg, Model model) {
		// 数据
		String msgStr = null;
		if (msg != null && msg == 1) {
			msgStr = "提交成功";
		}
		List<EqreturnTemp> undone = equipmentService.selectAllEqreturn();
		List<EqreturnTemp> done = equipmentService.selectAllEqreturnIsDone();
		model.addAttribute("undone", undone);
		model.addAttribute("done", done);
		model.addAttribute("msg", msgStr);
		return "/html/lzm_gymManage/equipment-ma-gui";
	}

	// 导出修改页面,返回器材的主要信息，给出分类和仓库提供选择
	@RequestMapping(value = "/showEquipment.action")
	public String showEquipment(Integer id, Model model) {
		Equipment equipment = equipmentService.selectByPrimaryKey(id);
		List<Eqclass> eqclasses = equipmentService.selectAllEqclass();
		List<Eqwarehouse> eqwarehouses = equipmentService.selectAllWarehouse();
		model.addAttribute("eqq", equipment);
		model.addAttribute("eqc", eqclasses);
		model.addAttribute("eqw", eqwarehouses);
		return "/html/lzm_gymManage/equipment-ma-info";
	}

	// 导出审核页面，提供审核
	@RequestMapping(value = "/showEqreturn.action")
	public String showEqreturn(String id, Model model) {
		Eqreturn eqreturn = equipmentService.getEqreturnById(id);
		Integer count = equipmentService.getEqreCount(id);
		model.addAttribute("eqrr", eqreturn);
		model.addAttribute("count", count);
		return "/html/lzm_gymManage/equipment-ma-gui";
	}

	// 导出修改页面,返回器材收费标准提供修改
	@RequestMapping(value = "/showEqspend.action")
	public String showEqspend(Integer id, Model model) {
		Equipmentspend equipment = equipmentService.selectEqspendByPrimaryKey(id);
		model.addAttribute("eqs", equipment);
		return "/html/lzm_gymManage/equipment-ma-charge";
	}

	// 导出修改页面,返回器材仓库提供修改
	@RequestMapping(value = "/showEqware.action")
	public String showEqware(Integer id, Model model) {
		Eqwarehouse eqwarehouse = equipmentService.selectEqwareByPrimaryKey(id);
		model.addAttribute("eqww", eqwarehouse);
		return "/html/lzm_gymManage/equipment-ma-ware";
	}

	// 导出修改页面,返回器材分类提供修改
	@RequestMapping(value = "/showEqclass.action")
	public String showEqclass(Integer id, Model model) {
		Eqclass eqclass = equipmentService.selectClassById(id);
		System.out.println(eqclass);
		model.addAttribute("eqcc", eqclass);
		return "/html/lzm_gymManage/equipment-ma-class";
	}

	// 提交修改器材信息
	@RequestMapping(value = "/updateEq.action")
	public String updateEq(Equipment equipment, Model model) {
		equipmentService.updateEq(equipment);
		return "forward: /getEquipment.action?msg=1";
	}

	// 提交修改器材收费标准
	@RequestMapping(value = "/updateEqSpend.action")
	public String updateEqSpend(Equipmentspend equipmentspend, Model model) {
		equipmentService.updateEqSpend(equipmentspend);
		return "forward: /getEqForcharge.action?msg=1";
	}

	// 提交修改器材仓库
	@RequestMapping(value = "/updateEqWare.action")
	public String updateEqWare(Eqwarehouse eqwarehouse, Model model) {
		equipmentService.updateEqWare(eqwarehouse);
		return "forward: /getEqWare.action?msg=1";
	}

	// 提交修改器材仓库
	@RequestMapping(value = "/updateEqClass.action")
	public String updateEqClass(Eqclass eqclass, Model model) {
		equipmentService.updateEqClass(eqclass);
		return "forward: /getEqClass.action?msg=1";
	}

	// 提交添加器材仓库
	@RequestMapping(value = "/addEqWare.action")
	public String addEqWare(Eqwarehouse eqwarehouse, Model model) {
		equipmentService.addEqWare(eqwarehouse);
		return "forward: /getEqWare.action?msg=2";
	}

	// 提交添加器材仓库
	@RequestMapping(value = "/addEqClass.action")
	public String addEqClass(Eqclass eqclass, Model model) {
		equipmentService.addEqClass(eqclass);
		return "forward: /getEqClass.action?msg=2";
	}

	/*
	 * 添加维护订单，如果有这个器材的维护单就更新数量，如果没有，就添加！！！最重要是要去修改器材空闲的数量
	 */
	@RequestMapping(value = "/addEqmaintain.action")
	public String addEqmaintain(Integer eqid, Integer eqcount, Model model) {
		equipmentService.addEqmaintain(eqid, eqcount);
		return "forward: /getEquipmentforweihu.action?msg=2";
	}

	// 删除维护表
	@RequestMapping(value = "/deleteEqmaintain.action")
	public String deleteEqmaintain(Integer eqid, Integer eqcount, Model model) {
		equipmentService.deleteEqmaintain(eqid, eqcount);
		return "forward: /getEquipmentforweihu.action?msg=3";
	}

	// 报废器材
	@RequestMapping(value = "/deleteEquipment.action")
	public String deleteEquipment(Integer eqid, Integer eqcount, Model model) {
		equipmentService.deleteEquipment(eqid, eqcount);
		return "forward: /getEquipmentfordelete.action?msg=1";
	}

	// 添加新器材
	@RequestMapping(value = "/addNewEq.action")
	public String addNewEq(Equipment equipment, Equipmentspend equipmentspend, Model model) {
		System.out.println(equipment);
		System.out.println(equipmentspend);
		if (equipment.getEqName().trim().isEmpty()) {
			return "forward: /getEquipmentforadd.action?msg=2";
		} else {
			Integer addNewEq = equipmentService.addNewEq(equipment);
			equipmentspend.setEq_id(addNewEq);
			equipmentspend.setEq_name(equipment.getEqName());
			equipmentService.addEquipmentspend(equipmentspend);
		}
		return "forward: /getEquipmentforadd.action?msg=1";
	}

	// 添加原有器材数量
	@RequestMapping(value = "/addEquipment.action")
	public String addEquipment(Integer eqid, Integer eqcount, Model model) {
		System.out.println(eqid);
		System.out.println(eqcount);
		equipmentService.deleteEquipment(eqid, -eqcount);
		return "forward: /getEquipmentforadd.action?msg=1";
	}

	// 处理租借单号，设置处理人名字
	@RequestMapping(value = "/dealEqlease.action")
	public String dealEqlease(String id, Integer staffid, Model model) {
		equipmentService.dealEqlease(id, staffid);
		return "forward: /getEqrental.action?msg=1";
	}

	/*
	 * 新增审核记录 修改报废表（如果有损坏、丢失） 修改器材表空闲数量 计算是否逾期 计算罚款
	 */
	@RequestMapping(value = "/addEqexamine.action")
	public String addEqexamine(Eqexamine eqexamine, Model model) {
		equipmentService.addEqexamine(eqexamine);
		return "forward: /getEqreturn.action?msg=1";
	}

	@RequestMapping(value = "/getEqexamine.action")
	public String getEqexamine(String id, Model model) {
		Eqexamine eqexamine = equipmentService.getEqexamine(id);
		model.addAttribute("eqexam", eqexamine);
		return "/html/lzm_gymManage/equipment-return";
	}
}
