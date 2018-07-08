package com.lzm.pojo;

public class EqrentalTempMa {
	private String eq_lease_id;
	private String eq_name;
	private Integer eq_count;
	private String eq_date_return;
	private String eq_date_rental;
	private Integer eq_user_id;

	public String getEq_lease_id() {
		return eq_lease_id;
	}

	public void setEq_lease_id(String eq_lease_id) {
		this.eq_lease_id = eq_lease_id;
	}

	public String getEq_name() {
		return eq_name;
	}

	public void setEq_name(String eq_name) {
		this.eq_name = eq_name;
	}

	public Integer getEq_count() {
		return eq_count;
	}

	public void setEq_count(Integer eq_count) {
		this.eq_count = eq_count;
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

	public Integer getEq_user_id() {
		return eq_user_id;
	}

	public void setEq_user_id(Integer eq_user_id) {
		this.eq_user_id = eq_user_id;
	}

	@Override
	public String toString() {
		return "EqrentalTempMa [eq_lease_id=" + eq_lease_id + ", eq_name=" + eq_name + ", eq_count=" + eq_count
				+ ", eq_date_return=" + eq_date_return + ", eq_date_rental=" + eq_date_rental + ", eq_user_id="
				+ eq_user_id + "]";
	}

}
