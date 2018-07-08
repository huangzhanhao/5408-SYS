package com.lzm.mapper;

import java.util.List;

import com.lzm.pojo.lth_SSGL;
import com.lzm.pojo.lth_cd;
import com.lzm.pojo.lth_qc;

public interface SSGL_Mapper {
	lth_SSGL SSXG_chaxun(String shenqingren);

	lth_SSGL YH_XG(String shenqingren);

	List<lth_SSGL> SSSH_chaxun();

	List<lth_SSGL> SH();

	List<lth_SSGL> SSCX();

	List<lth_SSGL> SSCX_1();

	List<lth_qc> CDQC_1();

	List<lth_cd> CDQC_2();

	// public void CDQC_CDsign(lth_cd XX);
	// public void CDQC_QCsign(lth_qc QC);
	public void CDQC_QCsign(lth_SSGL XX);

	public void CDQC_CDsign(lth_SSGL XX);

	// public void zhifu(String shenqingren);
	public void zhifu(lth_SSGL DD);

	public void YH_caozuo(String shenqingren);

	public void SSXG_QCsign(String id1);

	public void SSSH_tongyi(String shenqingren);

	public void SSSH_bohui(String shenqingren);

	public void SSXG_CDsign(String id2);

	public void SSSQ(lth_SSGL XX);

	public void SSSQ_1(lth_SSGL XX);

	public void YH_TY(lth_SSGL list_1);

	public void SSXG(lth_SSGL SSXG);

	public void SSXG_del(String shenqingren);
}
