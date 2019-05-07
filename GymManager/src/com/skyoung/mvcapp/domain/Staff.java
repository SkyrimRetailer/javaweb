package com.skyoung.mvcapp.domain;

public class Staff {

	private String StaffID;
	
	private String Name;
	
	private String Gender;
	
	private String Stafftype;
	
	private String Tel;

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

	public String getStafftype() {
		return Stafftype;
	}

	public void setStafftype(String stafftype) {
		Stafftype = stafftype;
	}

	public String getTel() {
		return Tel;
	}

	public void setTel(String tel) {
		Tel = tel;
	}

	@Override
	public String toString() {
		return "Staff [StaffID=" + StaffID + ", Name=" + Name + ", Gender=" + Gender + ", Stafftype=" + Stafftype
				+ ", Tel=" + Tel + "]";
	}
	
}
