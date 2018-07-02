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
	public String InsertFieldControl(field field,Model model){
		System.out.println(field.toString());
		fieldService.addFieldService(field);
		return "/html/hzh_gymManage/FieldList";
	}
	
	//管理员修改场地信息
	@RequestMapping("/editFieldAction.action")
	public String EditFieldControl(field field,Model model){
		System.out.println(field.toString());
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
}
