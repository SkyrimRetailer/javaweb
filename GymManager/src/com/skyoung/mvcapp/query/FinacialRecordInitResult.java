package com.skyoung.mvcapp.query;

public class FinacialRecordInitResult {

	private String SID;
	
	private String InOrOut;
	
	private String ConsumeType;
	
	private String Description;
	
	private Integer UnitPrice;
	
	private Integer Amount;
	
	private Integer Total;
	
	private String Name;
	
	private String Time;
	
	private String Remark;

	public String getSID() {
		return SID;
	}

	public void setSID(String sID) {
		SID = sID;
	}

	public String getInOrOut() {
		return InOrOut;
	}

	public void setInOrOut(String inOrOut) {
		InOrOut = inOrOut;
	}

	public String getConsumeType() {
		return ConsumeType;
	}

	public void setConsumeType(String consumeType) {
		ConsumeType = consumeType;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Integer getUnitPrice() {
		return UnitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		UnitPrice = unitPrice;
	}

	public Integer getAmount() {
		return Amount;
	}

	public void setAmount(Integer amount) {
		Amount = amount;
	}

	public Integer getTotal() {
		return Total;
	}

	public void setTotal(Integer total) {
		Total = total;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getTime() {
		return Time;
	}

	public void setTime(String time) {
		Time = time;
	}

	public String getRemark() {
		return Remark;
	}

	public void setRemark(String remark) {
		Remark = remark;
	}

	@Override
	public String toString() {
		return "FinacialRecordInitResult [SID=" + SID + ", InOrOut=" + InOrOut + ", ConsumeType=" + ConsumeType
				+ ", Description=" + Description + ", UnitPrice=" + UnitPrice + ", Amount=" + Amount + ", Total="
				+ Total + ", Name=" + Name + ", Time=" + Time + ", Remark=" + Remark + "]";
	}
	
}
