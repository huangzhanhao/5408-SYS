package com.lzm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lzm.pojo.Eqclass;
import com.lzm.pojo.Equipment;
import com.lzm.pojo.EquipmentTemp;
import com.lzm.service.equipmentService;


@Controller
public class equipment_query_controller {
	@Autowired
	private equipmentService equipmentService;
	
	 @RequestMapping(value = "/toQueryPage.action")
	 public String toQueryPage(Model model){
		 //准备分类的
		 List<Eqclass> list = equipmentService.selectAllEqclass();
		 model.addAttribute("eqcList", list);
		 return "/html/equipment-query";
	 }

	 @RequestMapping(value = "/getEquipment.action")
     public String getEquipment(Integer id,Model model){
         //数据
         Equipment list = equipmentService.selectByPrimaryKey(id);
         model.addAttribute("eqList", list);
         return "/html/equipment-query";
     }
	 @RequestMapping(value = "/toSearch.action")
	 public String toSearch(String str,Model model){
		 //数据
		 List<Equipment> list = equipmentService.selectByName(str);
		 model.addAttribute("eqList", list);
		 return "/html/equipment-search";
	 }
	 @RequestMapping(value = "/toCheckdetail.action",method = RequestMethod.GET)
	 public String toCheckdetail(Integer id,Model model){
		 //数据
		 Equipment equipment = equipmentService.selectByPrimaryKey(id);
		 String classnameString = equipmentService.selectClassById(equipment.getEqClassId());
		 model.addAttribute("equipment", equipment);
		 model.addAttribute("cStr", classnameString);
		 return "/html/equipment-checkdetail";
	 }
	 @RequestMapping(value = "/getDetail.action")
	 public @ResponseBody EquipmentTemp getDetail(Integer id){
		 //数据
		 EquipmentTemp equipment = equipmentService.selectByPrimaryKeyTemp(id);
		 return equipment;
	 }
}
