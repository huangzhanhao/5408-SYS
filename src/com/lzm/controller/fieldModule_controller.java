package com.lzm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lzm.pojo.field;
import com.lzm.pojo.field_damage;
import com.lzm.pojo.field_order;
import com.lzm.service.fieldModuleService;

@Controller
public class fieldModule_controller {

	@Autowired
	private fieldModuleService fieldService;

	// 查询所有场地
	@RequestMapping("/QueryFieldAction.action")
	@ResponseBody
	public Map QueryFieldControl(Model model) {
		List<field> fieldList = fieldService.getFieldListService();
		model.addAttribute("fieldList", fieldList);
		Map tableJSON = new HashMap();
		tableJSON.put("code", 0);
		tableJSON.put("msg", "场地列表返回");
		tableJSON.put("count", fieldList.size());
		tableJSON.put("data", fieldList);
		return tableJSON;
	}

	// 管理员新增场地
	@RequestMapping("/AddFieldAction.action")
	public String InsertFieldControl(field field, Model model) {
		System.out.println(field.toString());
		fieldService.addFieldService(field);
		return "/html/hzh_gymManage/FieldList";
	}

	// 管理员修改场地信息
	@RequestMapping("/editFieldAction.action")
	public String EditFieldControl(field field, int idfield_old, Model model) {
		System.out.println(field.toString());
		System.out.println(idfield_old);
		fieldService.editFieldService(idfield_old, field.getIdfield(), field.getField_type(), field.getField_location(),
				field.getField_describe(), field.getField_capacity(), field.getField_rental(), field.getField_status());
		return "/html/hzh_gymManage/FieldList";
	}

	// 管理员删除场地
	@RequestMapping("/delFieldAction.action")
	public String DelFieldControl(int idfield, Model model) {
		System.out.println(idfield);
		try {
			fieldService.deleteFieldService(idfield);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("主键无法删除");
		}
		return "/html/hzh_gymManage/FieldList";
	}

	// 查询所有场地受损记录
	@RequestMapping("/QueryFieldDamageAction.action")
	@ResponseBody
	public Map QueryFieldDamageControl2(Model model) {
		List<field_damage> damageList = fieldService.getFieldDamageListService();
		model.addAttribute("damageList", damageList);
		Map tableJSON = new HashMap();
		tableJSON.put("code", 0);
		tableJSON.put("msg", "场地受损记录返回");
		tableJSON.put("count", damageList.size());
		tableJSON.put("data", damageList);
		return tableJSON;
	}

	// 新增场地受损记录
	@RequestMapping("/AddFieldDamageAction.action")
	public String InsertFieldDamageControl(field_damage field_damage, Model model) {
		System.out.println(field_damage.toString());
		try {
			fieldService.addFieldDamageService(field_damage);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/html/hzh_gymManage/FieldDamageList";
	}

	// 修改场地受损记录
	@RequestMapping("/EditFieldDamageAction.action")
	public String EditInsertFieldDamageControl(field_damage field_damage, Model model) {
		System.out.println(field_damage.toString());
		fieldService.editFieldDamageService(field_damage);
		return "/html/hzh_gymManage/FieldDamageList";
	}

	// 删除场地受损记录
	@RequestMapping("/delFieldDamageAction.action")
	public String DelFieldDamageControl(int idfield_damage, Model model){
		System.out.println(idfield_damage);
		fieldService.deleteFieldDamageService(idfield_damage);
		return "/html/hzh_gymManage/FieldDamageList";
	}
	
	// 查询所有订单
	@RequestMapping("/QueryFieldOrderAction.action")
	@ResponseBody
	public Map QueryFieldOrderControl(Model model) {
		List<field_order> orderList = fieldService.getFieldOrderListService();
		model.addAttribute("orderList", orderList);
		Map tableJSON = new HashMap();
		tableJSON.put("code", 0);
		tableJSON.put("msg", "场地订单记录返回");
		tableJSON.put("count", orderList.size());
		tableJSON.put("data", orderList);
		return tableJSON;
	}
	
	//用户预约场地
	@RequestMapping("/ReserveAction.action")
	public String ReserveControl(field_order field_order,Model model){
		field_order.setOrder_status("未支付");
		System.out.println(field_order.toString());
		fieldService.reserveFieldService(field_order);
		return "/html/hzh_gymManage/returnsuccess";
	}
}
