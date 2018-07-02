package com.lzm.pojo;

import java.util.List;

public class field {
	private int idfield;
	private String field_type;
	private String field_location;
	private String field_describe;
	private String field_capacity;
	private String field_rental;
	private String field_status;
	private List<field_damage> field_damage;

	public int getIdfield() {
		return idfield;
	}

	public void setIdfield(int idfield) {
		this.idfield = idfield;
	}

	public String getField_type() {
		return field_type;
	}

	public void setField_type(String field_type) {
		this.field_type = field_type;
	}

	public String getField_location() {
		return field_location;
	}

	public void setField_location(String field_location) {
		this.field_location = field_location;
	}

	public String getField_describe() {
		return field_describe;
	}

	public void setField_describe(String field_describe) {
		this.field_describe = field_describe;
	}

	public String getField_capacity() {
		return field_capacity;
	}

	public void setField_capacity(String field_capacity) {
		this.field_capacity = field_capacity;
	}

	public String getField_rental() {
		return field_rental;
	}

	public void setField_rental(String field_rental) {
		this.field_rental = field_rental;
	}

	public String getField_status() {
		return field_status;
	}

	public void setField_status(String field_status) {
		this.field_status = field_status;
	}

	public List<field_damage> getField_damage() {
		return field_damage;
	}

	public void setField_damage(List<field_damage> field_damage) {
		this.field_damage = field_damage;
	}

	@Override
	public String toString() {
		return "field [idfield=" + idfield + ", field_type=" + field_type + ", field_location=" + field_location
				+ ", field_describe=" + field_describe + ", field_capacity=" + field_capacity + ", field_rental="
				+ field_rental + ", field_status=" + field_status + ", field_damage=" + field_damage + "]";
	}

}
