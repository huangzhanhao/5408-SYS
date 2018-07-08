package com.lzm.pojo;

/**
 * @author LZM
 *
 */
public class Equipment {
	private Integer eqId;
	private String eqName;
	private Integer eqWarehouseId;
	private Integer eqClassId;
	private Integer eqAmount;
	private Integer eqSurplus;

	@Override
	public String toString() {
		return "Equipment [eqId=" + eqId + ", eqName=" + eqName + ", eqWarehouseId=" + eqWarehouseId + ", eqClassId="
				+ eqClassId + ", eqAmount=" + eqAmount + ", eqSurplus=" + eqSurplus + "]";
	}

	public Integer getEqSurplus() {
		return eqSurplus;
	}

	public void setEqSurplus(Integer eqSurplus) {
		this.eqSurplus = eqSurplus;
	}

	public Integer getEqAmount() {
		return eqAmount;
	}

	public void setEqAmount(Integer eqAmount) {
		this.eqAmount = eqAmount;
	}

	public Integer getEqId() {
		return eqId;
	}

	public void setEqId(Integer eqId) {
		this.eqId = eqId;
	}

	public String getEqName() {
		return eqName;
	}

	public void setEqName(String eqName) {
		this.eqName = eqName == null ? null : eqName.trim();
	}

	public Integer getEqWarehouseId() {
		return eqWarehouseId;
	}

	public void setEqWarehouseId(Integer eqWarehouseId) {
		this.eqWarehouseId = eqWarehouseId;
	}

	public Integer getEqClassId() {
		return eqClassId;
	}

	public void setEqClassId(Integer eqClassId) {
		this.eqClassId = eqClassId;
	}
}