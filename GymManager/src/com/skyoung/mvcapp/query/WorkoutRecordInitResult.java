package com.skyoung.mvcapp.query;

public class WorkoutRecordInitResult {
	
	private String CheckinTime;
	
	private String CardID;
	
	private String Name;
	
	private String Gender;

	public String getCheckinTime() {
		return CheckinTime;
	}

	public void setCheckinTime(String checkinTime) {
		CheckinTime = checkinTime;
	}

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

	@Override
	public String toString() {
		return "WorkoutRecordInitResult [CheckinTime=" + CheckinTime + ", CardID=" + CardID + ", Name=" + Name
				+ ", Gender=" + Gender + "]";
	}
	
	
}
