package com.lzm.pojo;

public class Eqwarehouse {
	private Integer eq_warehouse_id;
	private String eq_warehouse_name;
	private String eq_warehouse_address;
	public Integer getEq_warehouse_id() {
		return eq_warehouse_id;
	}
	public void setEq_warehouse_id(Integer eq_warehouse_id) {
		this.eq_warehouse_id = eq_warehouse_id;
	}
	public String getEq_warehouse_name() {
		return eq_warehouse_name;
	}
	public void setEq_warehouse_name(String eq_warehouse_name) {
		this.eq_warehouse_name = eq_warehouse_name;
	}
	public String getEq_warehouse_address() {
		return eq_warehouse_address;
	}
	public void setEq_warehouse_address(String eq_warehouse_address) {
		this.eq_warehouse_address = eq_warehouse_address;
	}
	@Override
	public String toString() {
		return "Eqwarehouse [eq_warehouse_id=" + eq_warehouse_id
				+ ", eq_warehouse_name=" + eq_warehouse_name
				+ ", eq_warehouse_address=" + eq_warehouse_address + "]";
	}
	
}
