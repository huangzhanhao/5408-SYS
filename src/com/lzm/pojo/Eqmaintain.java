package com.lzm.pojo;

public class Eqmaintain {
	private Integer eq_id;
	private String eq_name;
	private Integer eq_maincount;

	public Integer getEq_id() {
		return eq_id;
	}

	public void setEq_id(Integer eq_id) {
		this.eq_id = eq_id;
	}

	public String getEq_name() {
		return eq_name;
	}

	public void setEq_name(String eq_name) {
		this.eq_name = eq_name;
	}

	public Integer getEq_maincount() {
		return eq_maincount;
	}

	public void setEq_maincount(Integer eq_maincount) {
		this.eq_maincount = eq_maincount;
	}

	@Override
	public String toString() {
		return "Eqmaintain [eq_id=" + eq_id + ", eq_name=" + eq_name + ", eq_maincount=" + eq_maincount + "]";
	}

}
