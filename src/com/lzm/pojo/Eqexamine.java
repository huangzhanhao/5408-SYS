package com.lzm.pojo;

public class Eqexamine {
	private String eq_ex_id;
	private Integer eq_id;
	private Integer eq_staff_id;
	private Boolean eq_overdue;//逾期
	private Integer eq_num_damage;//损坏
	private Integer eq_num_lose;//丢失
	private Float eq_publish;
	public String getEq_ex_id() {
		return eq_ex_id;
	}
	public void setEq_ex_id(String eq_ex_id) {
		this.eq_ex_id = eq_ex_id;
	}
	public Integer getEq_id() {
		return eq_id;
	}
	public void setEq_id(Integer eq_id) {
		this.eq_id = eq_id;
	}
	public Integer getEq_staff_id() {
		return eq_staff_id;
	}
	public void setEq_staff_id(Integer eq_staff_id) {
		this.eq_staff_id = eq_staff_id;
	}
	public Boolean getEq_overdue() {
		return eq_overdue;
	}
	public void setEq_overdue(Boolean eq_overdue) {
		this.eq_overdue = eq_overdue;
	}
	public Integer getEq_num_damage() {
		return eq_num_damage;
	}
	public void setEq_num_damage(Integer eq_num_damage) {
		this.eq_num_damage = eq_num_damage;
	}
	public Integer getEq_num_lose() {
		return eq_num_lose;
	}
	public void setEq_num_lose(Integer eq_num_lose) {
		this.eq_num_lose = eq_num_lose;
	}
	public Float getEq_publish() {
		return eq_publish;
	}
	public void setEq_publish(Float eq_publish) {
		this.eq_publish = eq_publish;
	}
	@Override
	public String toString() {
		return "Eqexamine [eq_ex_id=" + eq_ex_id + ", eq_id=" + eq_id
				+ ", eq_staff_id=" + eq_staff_id + ", eq_overdue=" + eq_overdue
				+ ", eq_num_damage=" + eq_num_damage + ", eq_num_lose="
				+ eq_num_lose + ", eq_publish=" + eq_publish + "]";
	}
	
}
