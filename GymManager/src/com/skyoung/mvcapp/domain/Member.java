package com.skyoung.mvcapp.domain;

public class Member {
	
	private String CardID;
	
	private String Name;
	
	private String Gender;
	
	private Integer Credit;
	
	private String Tel;
	
	private String StartDate;
	
	private String OverdueDate;
	
	public String getCardID() {
		return CardID;
	}

	public void setCardID(String cardID) {
		CardID = cardID;
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

	public Integer getCredit() {
		return Credit;
	}

	public void setCredit(Integer credit) {
		Credit = credit;
	}

	public String getTel() {
		return Tel;
	}

	public void setTel(String tel) {
		Tel = tel;
	}

	public String getStartDate() {
		return StartDate;
	}

	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getOverdueDate() {
		return OverdueDate;
	}

	public void setOverdueDate(String overdueDate) {
		OverdueDate = overdueDate;
	}

	@Override
	public String toString() {
		return "Member [CardID=" + CardID + ", Name=" + Name + ", Gender=" + Gender + ", Credit=" + Credit + ", Tel="
				+ Tel + ", StartDate=" + StartDate + ", OverdueDate=" + OverdueDate + "]";
	}
	
}
