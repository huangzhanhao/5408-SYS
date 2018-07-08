package com.lzm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzm.mapper.SSGL_Mapper;
import com.lzm.pojo.lth_SSGL;
import com.lzm.pojo.lth_cd;
import com.lzm.pojo.lth_qc;

@Service
public class SSGL_Imp implements SSGL_Service {
	@Autowired
	private SSGL_Mapper SSGL;

	@Override
	public void SSSH_tongyi(String shenqingren) {
		SSGL.SSSH_tongyi(shenqingren);
	}

	@Override
	public void SSSH_bohui(String shenqingren) {
		SSGL.SSSH_bohui(shenqingren);
	}

	@Override
	public void YH_caozuo(String shenqingren) {
		SSGL.YH_caozuo(shenqingren);
	}

	@Override
	public void SSXG_CDsign(String id2) {
		SSGL.SSXG_CDsign(id2);
	}

	@Override
	public void SSXG_QCsign(String id1) {
		SSGL.SSXG_QCsign(id1);
	}

	@Override
	public void CDQC_CDsign(lth_SSGL XX) {
		SSGL.CDQC_CDsign(XX);
	}

	@Override
	public void CDQC_QCsign(lth_SSGL XX) {
		SSGL.CDQC_QCsign(XX);
	}

	// 查询赛事
	@Override
	public List<lth_SSGL> selectSS() {
		// TODO Auto-generated method stub
		return SSGL.SSCX();
	}

	@Override
	public lth_SSGL YH_XG(String shenqingren) {
		// TODO Auto-generated method stub
		return SSGL.YH_XG(shenqingren);
	}

	// 查询修改赛事
	@Override
	public lth_SSGL SSXG_chaxun(String shenqingren) {
		// TODO Auto-generated method stub
		return SSGL.SSXG_chaxun(shenqingren);
	}

	// 查询审核
	@Override
	public List<lth_SSGL> SSSH_chaxun() {
		// TODO Auto-generated method stub
		return SSGL.SSSH_chaxun();
	}

	// 用户查询审核
	@Override
	public List<lth_SSGL> SH() {
		// TODO Auto-generated method stub
		return SSGL.SH();
	}

	// 删除赛事
	@Override
	public void SSXG_del(String shenqingren) {
		// TODO Auto-generated method stub
		SSGL.SSXG_del(shenqingren);
	}
	// 订单支付

	@Override
	public void zhifu(lth_SSGL DD) {
		// TODO Auto-generated method stub
		SSGL.zhifu(DD);
	}

	// @Override
	// public void zhifu(String zhifu) {
	// // TODO Auto-generated method stub
	// SSGL.zhifu(zhifu);
	// }
	// 申请赛事
	@Override
	public void SSSQ(lth_SSGL XX) {
		// TODO Auto-generated method stub
		SSGL.SSSQ(XX);
	}

	@Override
	public void YH_TY(lth_SSGL list_1) {
		// TODO Auto-generated method stub
		SSGL.YH_TY(list_1);
	}

	// 用户修改赛事
	@Override
	public void SSSQ_1(lth_SSGL XX) {
		// TODO Auto-generated method stub
		SSGL.SSSQ_1(XX);
	}

	// 赛事修改
	@Override
	public void SSXG(lth_SSGL SSXG) {
		// TODO Auto-generated method stub
		SSGL.SSXG(SSXG);
	}

	// 场地器材预加载

	@Override
	public List<lth_qc> CDQC_1() {
		// TODO Auto-generated method stub
		return SSGL.CDQC_1();
	}

	@Override
	public List<lth_cd> CDQC_2() {
		// TODO Auto-generated method stub
		return SSGL.CDQC_2();
	}

	// @Override
	// public void CDQC_CDsign(lth_cd CD) {
	// SSGL.CDQC_CDsign(CD);
	// }

	// @Override
	// public void CDQC_CDsign(lth_cd CD) {
	// return SSGL.CDQC_CDsign(CD);
	// }
	// @Override
	// public void CDQC_QCsign(lth_cd QC) {
	// return SSGL.CDQC_QCsign(QC);
	// }

}
