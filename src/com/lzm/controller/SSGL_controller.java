package com.lzm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lzm.pojo.Equipment;
import com.lzm.pojo.ltcOrdinaryRole;
import com.lzm.pojo.lth_SSGL;
import com.lzm.pojo.lth_cd;
import com.lzm.pojo.lth_qc;
import com.lzm.service.SSGL_Service;

@Controller
public class SSGL_controller {


	// Service
	@Autowired
	private SSGL_Service aService;
	
	// 普通用户查询
	@RequestMapping("/query.action")
	public String SSCX(lth_SSGL role, Model model) {
		List<lth_SSGL> list = aService.selectSS();
		model.addAttribute("SSXX_list", list);
		for (int i = 0; i < list.size(); i++) {
			lth_SSGL s = (lth_SSGL) list.get(i);
			System.out.println(s.getShenqingren() + "," + s.getChangdi() + "," + s.getKaishishijian() + ","
					+ s.getJieshushijian() + "," + s.getZhifubiaoji() + "," + s.getDingdanjine() + "," + s.getQicai());
		}
		return "/html/lth_gymManage/SSCX_1";
	}
	// 普通用户操作查询
	@RequestMapping("/cz_query.action")
	public String SSCX_2(lth_SSGL role, Model model) {
		List<lth_SSGL> list = aService.selectSS();
		model.addAttribute("SSXX_list", list);
		for (int i = 0; i < list.size(); i++) {
			lth_SSGL s = (lth_SSGL) list.get(i);
			System.out.println(s.getShenqingren() + "," + s.getChangdi() + "," + s.getKaishishijian() + ","
					+ s.getJieshushijian() + "," + s.getZhifubiaoji() + "," + s.getDingdanjine() + "," + s.getQicai());
		}
		return "/html/lth_gymManage/SSXG_YH";
	}
	// 管理员查询
	@RequestMapping("/ad_query.action")
	public String SSCX_1(lth_SSGL role, Model model) {	
		List<lth_SSGL> list = aService.selectSS();
		model.addAttribute("SSXX_list_1", list);
		for (int i = 0; i < list.size(); i++) {
			lth_SSGL s = (lth_SSGL) list.get(i);
			System.out.println(s.getShenqingren() + "," + s.getChangdi() + "," + s.getKaishishijian() + ","
					+ s.getJieshushijian() + "," + s.getZhifubiaoji() + "," + s.getDingdanjine() + "," + s.getQicai() + "," + s.getShenqingriqi());
		}
		return "/html/lth_gymManage/SSCX";
	}

	// 用户支付查询
			@RequestMapping("/YH_query.action")
			public String YH(lth_SSGL role, Model model) {	
				List<lth_SSGL> list = aService.SH();		
				model.addAttribute("SSXX_list", list);
				for (int i = 0; i < list.size(); i++) {
					lth_SSGL s = (lth_SSGL) list.get(i);
					System.out.println(s.getShenqingren() + "," + s.getChangdi() + "," + s.getKaishishijian() + ","
							+ s.getJieshushijian() + "," + s.getZhifubiaoji() + "," + s.getDingdanjine() + "," + s.getQicai() + "," + s.getShenqingriqi());
				}
				return "/html/lth_gymManage/SSSH_1";
			}
	
	// 审核查询
		@RequestMapping("/SH_query.action")
		public String shenhe(lth_SSGL role, Model model) {	
			List<lth_SSGL> list = aService.SSSH_chaxun();
			model.addAttribute("SSXX_list_1", list);
	
			return "/html/lth_gymManage/SSSH";
		}
//	
		// 审核驳回
		@RequestMapping("/SSSH_bohui.action")
		public String bohui(lth_SSGL role,String shenqingren,String yonghucaozuo,Model model) {
	
			System.out.println(shenqingren);
			aService.SSSH_bohui(shenqingren);
			return "/html/lth_gymManage/SSSH";}

		// 审核同意
		@RequestMapping("/SSSH_tongyi.action")
		public String tongyi(lth_SSGL role,String shenqingren,String yonghucaozuo, Model model) {
			
			int as = Integer.parseInt(yonghucaozuo);
			if(as==0)
			{
			System.out.println(shenqingren);
			aService.SSSH_tongyi(shenqingren);
			return "/html/lth_gymManage/SSSH";}
		
		else{	
			System.out.println(yonghucaozuo);
		lth_SSGL list = aService.SSXG_chaxun(shenqingren);
		aService.SSXG_QCsign(list.getQCid());
		aService.SSXG_CDsign(list.getCDid());
		aService.SSXG_del(shenqingren);
		lth_SSGL list_1 = aService.YH_XG(shenqingren);
		aService.YH_TY(list_1);
	   	aService.CDQC_QCsign(list_1);
    	aService.CDQC_CDsign(list_1);
			return "/html/lth_gymManage/SSSH";
			
		}}
//	 @RequestMapping(value = "/toCheckdetail.action",method = RequestMethod.GET)
//	 public String toCheckdetail(Integer id,Model model){
//		 //数据
//		 Equipment equipment = equipmentService.selectByPrimaryKey(id);
//		 String classnameString = equipmentService.selectClassById(equipment.getEqClassId());
//		 model.addAttribute("equipment", equipment);
//		 model.addAttribute("cStr", classnameString);
//		 return "/html/equipment-checkdetail";
//	 }

	//管理员查詢所需修改的賽事信息
	@RequestMapping("/SSXG_chaxun.action")
	public String SSXG_chauxn(String shenqingren, Model model) {
		System.out.println(shenqingren);

		lth_SSGL list = aService.SSXG_chaxun(shenqingren);
		model.addAttribute("SSXG",list);
	List<lth_qc> CDQC_1 = aService.CDQC_1();
    List<lth_cd> CDQC_2 = aService.CDQC_2();
	model.addAttribute("CDQC_1", CDQC_1);
	model.addAttribute("CDQC_2", CDQC_2);
////	
//    	lth_SSGL s = (lth_SSGL) list.get(0);
//		System.out.println(s.getShenqingren() + "," + s.getChangdi() + "," + s.getKaishishijian() + ","
//			+ s.getJieshushijian() + "," + s.getZhifubiaoji() + "," + s.getDingdanjine() + "," + s.getQicai()+ "," + s.getShenqingriqi());

        return "/html/lth_gymManage/SSXG";
	}
	
	//用户查詢所需修改的賽事信息
	@RequestMapping("/SSXG_chaxun_1.action")
	public String SSXG_chauxn_1(String shenqingren, Model model) {
		System.out.println(shenqingren);

		lth_SSGL list = aService.SSXG_chaxun(shenqingren);
		model.addAttribute("SSXG",list);

	List<lth_qc> CDQC_1 = aService.CDQC_1();
    List<lth_cd> CDQC_2 = aService.CDQC_2();
	model.addAttribute("CDQC_1", CDQC_1);
	model.addAttribute("CDQC_2", CDQC_2);

        return "/html/lth_gymManage/SSXG_1";
	}
	
	// 用户修改赛事
	@RequestMapping("/SSXG_1.action")
	public String SSXG_1(lth_SSGL XX, Model model) {
		aService.YH_caozuo(XX.getShenqingren());
//		System.out.println(XX.getShenqingren() + "," + XX.getChangdi() + "," + XX.getKaishishijian() + ","
//			+ XX.getJieshushijian() + "," + XX.getQicai() + "," + XX.getShenqingriqi());
		aService.SSSQ_1(XX);
	   	aService.CDQC_QCsign(XX);
    	aService.CDQC_CDsign(XX);
         
		return ("redirect:/YH_query.action");
	}

	
	
	@RequestMapping("/test.action")
	public String test(String shenqingren, Model model) {

		System.out.println(shenqingren);
		return null;
	}
	
	
	
	
	//删除赛事
	@RequestMapping("/SSXG_del.action")
	public String SSXG_del(String shenqingren, Model model) {
		lth_SSGL list = aService.SSXG_chaxun(shenqingren);
		aService.SSXG_QCsign(list.getQCid());
		aService.SSXG_CDsign(list.getCDid());
		aService.SSXG_del(shenqingren);
		
		
		
		 
	return ("redirect:/ad_query.action");}



	
	
	// 修改赛事
	@RequestMapping("/SSXG.action")
	public String SSXG(lth_SSGL SSXG,String id1,String id2,Model model) {
		System.out.println(id1);
		System.out.println(id2);
		System.out.println(SSXG.getShenqingren() + "," + SSXG.getChangdi() + "," + SSXG.getKaishishijian() + ","
				+ SSXG.getJieshushijian() + "," + SSXG.getQicai() + "," + SSXG.getShenqingriqi());
			
aService.SSXG_QCsign(id1);
aService.SSXG_CDsign(id2);
aService.CDQC_QCsign(SSXG);
aService.CDQC_CDsign(SSXG);

		
		aService.SSXG(SSXG);
		return ("redirect:/ad_query.action");

	}
	
	// 测试用
	@RequestMapping("/ceshi.action")
	public String ceshi(lth_SSGL SSXG,String id1,String id2,Model model) {
	
		System.out.println(SSXG.getShenqingren() + "," + SSXG.getChangdi() + "," + SSXG.getKaishishijian() + ","
				+ SSXG.getJieshushijian() + "," + SSXG.getQicai() + "," + SSXG.getShenqingriqi());
		System.out.println(id1);
		System.out.println(id2);
		
		
		
//		aService.SSSQ(XX);
//	   	aService.CDQC_QCsign(XX);
//    	aService.CDQC_CDsign(XX);
//  
		
		return null;
	}
	
	//订单支付
	@RequestMapping("/dingdanzhifu.action")
	public String DDZF(lth_SSGL DD, Model model) {
		
		System.out.println(DD.getShenqingren() + "," + DD.getCDmoney() + "," + DD.getQCmoney() + ","
				+ DD.getDingdanjine());		
		aService.zhifu(DD);
////		lth_SSGL list = aService.SSXG_chaxun(DD.getShenqingren());
////		model.addAttribute("SSXG",list);
////		
////		
//		
//		
//		
//		List<lth_SSGL> list = aService.selectSS();
//		model.addAttribute("SSXX_list_1", list);
return ("redirect:/query.action");

	}
	//订单详情
	@RequestMapping("/dingdan.action")
	public String DDXQ(lth_SSGL DD,String shenqingren,String shenhebiaoji,Model model) {
		System.out.println(shenqingren);

		int as = Integer.parseInt(shenhebiaoji);
	if (as==2)
	{System.out.println("订单已被管理员驳回");
	
			return null;}
	else{
	
	lth_SSGL list = aService.SSXG_chaxun(shenqingren);
   	model.addAttribute("DD", list);
		
	System.out.println(DD.getShenqingren() + "," + DD.getCDmoney() + "," + DD.getQCmoney() + ","
			+ DD.getDingdanjine());	
  	String mon1 = list.getCDmoney();
   	String mon2 = list.getQCmoney();
   	int a = Integer.parseInt(mon1);
   	int b = Integer.parseInt(mon2);
   	int c = a+b;
	String cc = String.valueOf(c);
   	model.addAttribute("c", cc);
 
//	XX.setDingdanjine(dingdanjine);
//	
//	aService.zhifu(DD.getShenqingren());
////		lth_SSGL list = aService.SSXG_chaxun(DD.getShenqingren());
////		model.addAttribute("SSXG",list);	
//		List<lth_SSGL> list = aService.selectSS();
//		model.addAttribute("SSXX_list_1", list);
return ("/html/lth_gymManage/DDZF");}

	}

	
	// 申请赛事
	@RequestMapping("/SSSQ.action")
	public String SSSQ(lth_SSGL XX, Model model) {
	
//		System.out.println(XX.getShenqingren() + "," + XX.getChangdi() + "," + XX.getKaishishijian() + ","
//			+ XX.getJieshushijian() + "," + XX.getQicai() + "," + XX.getShenqingriqi());
//		
		aService.SSSQ(XX);
	   	aService.CDQC_QCsign(XX);
    	aService.CDQC_CDsign(XX);
         
		return ("redirect:/YH_query.action");
	}

	// 场地预加载
	@RequestMapping("/jiazai_1.action")
	public String CDQC(lth_SSGL role, Model model) {
		List<lth_qc> CDQC_1 = aService.CDQC_1();
		List<lth_cd> CDQC_2 = aService.CDQC_2();
		model.addAttribute("CDQC_1", CDQC_1);
		model.addAttribute("CDQC_2", CDQC_2);
		// System.out.println(CDQC_1.getCDname()+","+CDQC_1.getQCname());
//		for (int i = 0; i < CDQC_1.size(); i++) {
//			lth_SSGL s = (lth_SSGL) CDQC_1.get(i);
//			System.out.println(s.getQCname() + "," + s.getCDname());
//		}
		return "/html/lth_gymManage/SSSQ";

	}



	
	
	
	
	
	
	
	
	
	
	
	
	
	

	//

//	@RequestMapping("/jiazai_2.action")
//	public String CDQC_2(lth_SSGL role, Model model) {
//
//		List<lth_SSGL> list = aService.CDQC_2();
//		model.addAttribute("CDQC_2", list);
//		for (int i = 0; i < list.size(); i++) {
//			lth_SSGL s = (lth_SSGL) list.get(i);
//			System.out.println(s.getQC() + "," + s.getCD());
//		}
//		return "/html/lth_gymManage/SSSQ";
//	}
	
//	
//  @RequestMapping(value="/update")
//  public String updateuser(User user) {
//      service.upadte(user);
//      return SUCCESS;
//  } 
//	
	
//	 public String toSearch(String str,Model model){
//		 //数据
//		 List<Equipment> list = equipmentService.selectByName(str);
//		 model.addAttribute("eqList", list);
//		 return "/html/equipment-search";
//	 }
//	
	
//  @RequestMapping(value="/update")
//  public String updateuser(User user) {
//      service.upadte(user);
//      return SUCCESS;
//  } 

//	
//	public @ResponseBody String updEmployee(AdsvEmployee employee, HttpServletRequest request) {
//		try {			
//			service.updEmployee(employee);
//			adsvRetrun.updSuccess();
//			return adsvRetrun.toString();
//		} catch (Exception e) {
//			e.printStackTrace();
//			adsvRetrun.updFail("");
//			return adsvRetrun.toString();
//		}
//	}
//	

}
