package com.junefw.infra.modules.code;

public class CodeVo {
	//infrCodeGroup
	private String ifcgSeq;
	//infrCode
	private String ifcdSeq;
	//infrCodeGroup Search
	private String shIfcgName;
	
	private Integer shIifcgDelNy;
	
	private String shIifgSeq;
	
	
	public String getShIifgSeq() {
		return shIifgSeq;
	}
	public void setShIifgSeq(String shIifgSeq) {
		this.shIifgSeq = shIifgSeq;
	}
	public Integer getShIifcgDelNy() {
		return shIifcgDelNy;
	}
	public void setShIifcgDelNy(Integer shIifcgDelNy) {
		this.shIifcgDelNy = shIifcgDelNy;
	}
	public String getShIfcgName() {
		return shIfcgName;
	}
	public void setShIfcgName(String shIfcgName) {
		this.shIfcgName = shIfcgName;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}


}