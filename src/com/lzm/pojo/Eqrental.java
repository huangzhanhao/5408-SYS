package com.lzm.pojo;


/**
 * @author LZM
 *
 */
public class Eqrental {
	private String eq_lease_id;
	private Integer eq_id;
	private Integer eq_count;
	private Float eq_charge;
	private String eq_date_rental;
	private String eq_date_return;
	private Boolean eq_isreturn;
	private Integer eq_user_id;
	private Integer eq_staff_id;
	public String getEq_lease_id() {
		return eq_lease_id;
	}
	public void setEq_lease_id(String eq_lease_id) {
		this.eq_lease_id = eq_lease_id;
	}
	public Integer getEq_id() {
		return eq_id;
	}
	public void setEq_id(Integer eq_id) {
		this.eq_id = eq_id;
	}
	public Integer getEq_count() {
		return eq_count;
	}
	public void setEq_count(Integer eq_count) {
		this.eq_count = eq_count;
	}
	public Float getEq_charge() {
		return eq_charge;
	}
	public void setEq_charge(Float eq_charge) {
		this.eq_charge = eq_charge;
	}
	
	public String getEq_date_return() {
		return eq_date_return;
	}
	public void setEq_date_return(String eq_date_return) {
		this.eq_date_return = eq_date_return;
	}
	public String getEq_date_rental() {
		return eq_date_rental;
	}
	public void setEq_date_rental(String eq_date_rental) {
		this.eq_date_rental = eq_date_rental;
	}
	public Boolean getEq_isreturn() {
		return eq_isreturn;
	}
	public void setEq_isreturn(Boolean eq_isreturn) {
		this.eq_isreturn = eq_isreturn;
	}
	public Integer getEq_user_id() {
		return eq_user_id;
	}
	public void setEq_user_id(Integer eq_user_id) {
		this.eq_user_id = eq_user_id;
	}
	public Integer getEq_staff_id() {
		return eq_staff_id;
	}
	public void setEq_staff_id(Integer eq_staff_id) {
		this.eq_staff_id = eq_staff_id;
	}
	@Override
	public String toString() {
		return "Eqrental [eq_lease_id=" + eq_lease_id + ", eq_id=" + eq_id
				+ ", eq_count=" + eq_count + ", eq_charge=" + eq_charge
				+ ", eq_date_rental=" + eq_date_rental + ", eq_date_return="
				+ eq_date_return + ", eq_isreturn=" + eq_isreturn
				+ ", eq_user_id=" + eq_user_id + ", eq_staff_id=" + eq_staff_id
				+ "]";
	}
	
}
