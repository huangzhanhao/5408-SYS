package com.lzm.service;

import java.util.List;


import com.lzm.pojo.lth_SSGL;
import com.lzm.pojo.lth_cd;
import com.lzm.pojo.lth_qc;

//查询普通用户
public interface SSGL_Service {
    public lth_SSGL SSXG_chaxun(String shenqingren);
    public lth_SSGL YH_XG(String shenqingren);
    public List<lth_SSGL> SSSH_chaxun();
    public List<lth_SSGL> SH();
    //查询赛事
    public List<lth_SSGL> selectSS();
    void YH_TY(lth_SSGL list_1);
    
    void SSSQ_1(lth_SSGL XX);
	//申请赛事
    void SSSQ(lth_SSGL XX);
    //支付
    void zhifu(lth_SSGL XX);
//    void zhifu(String zhifu);
  //賽事修改
    void SSXG(lth_SSGL SSXG);
    //查询场地器材
    public List<lth_qc> CDQC_1();
    public List<lth_cd> CDQC_2();
//    public void CDQC_CDsign(lth_cd CD);
//    public void CDQC_QCsign(lth_qc QC);
	public void CDQC_QCsign(lth_SSGL XX);

   	public void CDQC_CDsign(lth_SSGL XX);
  	public void YH_caozuo(String shenqingren);
  	public void SSSH_tongyi(String shenqingren);
  	public void SSSH_bohui(String shenqingren);
   	public void SSXG_QCsign(String id1);

   	public void SSXG_CDsign(String id2);
   	public void SSXG_del(String shenqingren);
}

