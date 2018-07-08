package com.lzm.pojo;

import java.util.List;

public class Eqclass {
	private Integer eqClassId;

	private String eqClassName;

	private List<Equipment> equipment;

	public List<Equipment> getEquipment() {
		return equipment;
	}

	public void setEquipment(List<Equipment> equipment) {
		this.equipment = equipment;
	}

	public Integer getEqClassId() {
		return eqClassId;
	}

	public void setEqClassId(Integer eqClassId) {
		this.eqClassId = eqClassId;
	}

	public String getEqClassName() {
		return eqClassName;
	}

	public void setEqClassName(String eqClassName) {
		this.eqClassName = eqClassName == null ? null : eqClassName.trim();
	}
}