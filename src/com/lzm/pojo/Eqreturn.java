package com.lzm.pojo;

public class Eqreturn {
	private String eq_return_id;
	private Integer eq_id;
	private String eq_return_date;
	private String eq_exam_state;
	private String eq_user_id;

	public String getEq_return_id() {
		return eq_return_id;
	}

	public void setEq_return_id(String eq_return_id) {
		this.eq_return_id = eq_return_id;
	}

	public Integer getEq_id() {
		return eq_id;
	}

	public void setEq_id(Integer eq_id) {
		this.eq_id = eq_id;
	}

	public String getEq_return_date() {
		return eq_return_date;
	}

	public void setEq_return_date(String eq_return_date) {
		this.eq_return_date = eq_return_date;
	}

	public String getEq_exam_state() {
		return eq_exam_state;
	}

	public void setEq_exam_state(String eq_exam_state) {
		this.eq_exam_state = eq_exam_state;
	}

	public String getEq_user_id() {
		return eq_user_id;
	}

	public void setEq_user_id(String eq_user_id) {
		this.eq_user_id = eq_user_id;
	}

	@Override
	public String toString() {
		return "Eqreturn [eq_return_id=" + eq_return_id + ", eq_id=" + eq_id + ", eq_return_date=" + eq_return_date
				+ ", eq_exam_state=" + eq_exam_state + ", eq_user_id=" + eq_user_id + "]";
	}
}
