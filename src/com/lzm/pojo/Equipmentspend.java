package com.lzm.pojo;
/*
 * 器材收费标准表
 */
public class Equipmentspend {
	private Integer eq_id;
	private String eq_name;
	private Integer eq_deposit;//押金
	private Integer eq_price;
	private Integer eq_overdue;//逾期
	private Integer eq_damage;//损坏
	private Integer eq_lose;//丢失
	@Override
	public String toString() {
		return "Equipmentspend [eq_id=" + eq_id + ", eq_name=" + eq_name
				+ ", eq_deposit=" + eq_deposit + ", eq_price=" + eq_price
				+ ", eq_overdue=" + eq_overdue + ", eq_damage=" + eq_damage
				+ ", eq_lose=" + eq_lose + "]";
	}
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
	public Integer getEq_deposit() {
		return eq_deposit;
	}
	public void setEq_deposit(Integer eq_deposit) {
		this.eq_deposit = eq_deposit;
	}
	public Integer getEq_price() {
		return eq_price;
	}
	public void setEq_price(Integer eq_price) {
		this.eq_price = eq_price;
	}
	public Integer getEq_overdue() {
		return eq_overdue;
	}
	public void setEq_overdue(Integer eq_overdue) {
		this.eq_overdue = eq_overdue;
	}
	public Integer getEq_damage() {
		return eq_damage;
	}
	public void setEq_damage(Integer eq_damage) {
		this.eq_damage = eq_damage;
	}
	public Integer getEq_lose() {
		return eq_lose;
	}
	public void setEq_lose(Integer eq_lose) {
		this.eq_lose = eq_lose;
	}
	
	
	
}
