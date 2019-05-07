package com.skyoung.mvcapp.query;

public class StaffInitResult {
		
	private String StaffID;
	
	private String Name;
	
	private String Gender;
	
	private String TypeName;
	
	private String Tel;
	
	private String BasicSalary;

	public String getStaffID() {
		return StaffID;
	}

	public void setStaffID(String staffID) {
		StaffID = staffID;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getTypeName() {
		return TypeName;
	}

	public void setTypeName(String typeName) {
		TypeName = typeName;
	}

	public String getTel() {
		return Tel;
	}

	public void setTel(String tel) {
		Tel = tel;
	}

	public String getBasicSalary() {
		return BasicSalary;
	}

	public void setBasicSalary(String basicSalary) {
		BasicSalary = basicSalary;
	}

	@Override
	public String toString() {
		return "InitResult [StaffID=" + StaffID + ", Name=" + Name + ", Gender=" + Gender + ", TypeName=" + TypeName
				+ ", Tel=" + Tel + ", BasicSalary=" + BasicSalary + "]";
	}
	
}
