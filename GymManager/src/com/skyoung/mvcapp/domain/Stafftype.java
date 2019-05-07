package com.skyoung.mvcapp.domain;

public class Stafftype {

	private String TypeID;
	
	private String TypeName;
	
	private Integer BasicSalary;

	public String getTypeID() {
		return TypeID;
	}

	public void setTypeID(String typeID) {
		TypeID = typeID;
	}

	public String getTypeName() {
		return TypeName;
	}

	public void setTypeName(String typeName) {
		TypeName = typeName;
	}

	public Integer getBasicSalary() {
		return BasicSalary;
	}

	public void setBasicSalary(Integer basicSalary) {
		BasicSalary = basicSalary;
	}

	@Override
	public String toString() {
		return "Stafftype [TypeID=" + TypeID + ", TypeName=" + TypeName + ", BasicSalary=" + BasicSalary + "]";
	}
	
}
