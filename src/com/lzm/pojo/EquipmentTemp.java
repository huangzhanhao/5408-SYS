package com.lzm.pojo;

/**
 * @author LZM
 *
 */
public class EquipmentTemp {
    private Integer eqId;
    private String eqName;
    private String eqWarehouseAdress;
    private String eqWarehouseName;
    private String eqClassName;
    private Integer eqAmount;
    private Integer eqExpand;
    private Integer eqSurplus;
    

    
	public String getEqWarehouseName() {
		return eqWarehouseName;
	}
	public void setEqWarehouseName(String eqWarehouseName) {
		this.eqWarehouseName = eqWarehouseName;
	}
	public Integer getEqExpand() {
		return eqExpand;
	}
	public void setEqExpand(Integer eqExpand) {
		this.eqExpand = eqExpand;
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
	public String getEqWarehouseAdress() {
		return eqWarehouseAdress;
	}
	public void setEqWarehouseAdress(String eqWarehouseAdress) {
		this.eqWarehouseAdress = eqWarehouseAdress;
	}
	public String getEqClassName() {
		return eqClassName;
	}
	public void setEqClassName(String eqClassName) {
		this.eqClassName = eqClassName;
	}
	

    
}