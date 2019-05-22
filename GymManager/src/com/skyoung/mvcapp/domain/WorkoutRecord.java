package com.skyoung.mvcapp.domain;

public class WorkoutRecord {

	private String CardID;
	
	private String CheckinTime;

	public String getCardID() {
		return CardID;
	}

	public void setCardID(String cardID) {
		CardID = cardID;
	}

	public String getCheckinTime() {
		return CheckinTime;
	}

	public void setCheckinTime(String checkinTime) {
		CheckinTime = checkinTime;
	}

	@Override
	public String toString() {
		return "WorkoutRecord [CardID=" + CardID + ", CheckinTime=" + CheckinTime + "]";
	}
	
}
