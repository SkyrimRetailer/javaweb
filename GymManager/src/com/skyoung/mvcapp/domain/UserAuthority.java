package com.skyoung.mvcapp.domain;

public class UserAuthority {
	private String Username;
	private int AuthorityManage;
	private int StaffRead;
	private int StaffAdd;
	private int StaffEdit;
	private int StaffDelete;
	private int StaffTypeRead;
	private int StaffTypeAdd;
	private int StaffTypeEdit;
	private int StaffTypeDelete;
	private int MemberRead;
	private int MemberAdd;
	private int MemberEdit;
	private int MemberDelete;
	private int WorkoutRecordRead;
	private int WorkoutRecordAdd;
	private int WorkoutRecordDelete;
	private int FinacialRecordRead;
	private int FinacialRecordAdd;
	private int FinacialRecordEdit;
	private int FinacialRecordDelete;
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int getAuthorityManage() {
		return AuthorityManage;
	}
	public void setAuthorityManage(int authorityManage) {
		AuthorityManage = authorityManage;
	}
	public int getStaffRead() {
		return StaffRead;
	}
	public void setStaffRead(int staffRead) {
		StaffRead = staffRead;
	}
	public int getStaffAdd() {
		return StaffAdd;
	}
	public void setStaffAdd(int staffAdd) {
		StaffAdd = staffAdd;
	}
	public int getStaffEdit() {
		return StaffEdit;
	}
	public void setStaffEdit(int staffEdit) {
		StaffEdit = staffEdit;
	}
	public int getStaffDelete() {
		return StaffDelete;
	}
	public void setStaffDelete(int staffDelete) {
		StaffDelete = staffDelete;
	}
	public int getStaffTypeRead() {
		return StaffTypeRead;
	}
	public void setStaffTypeRead(int staffTypeRead) {
		StaffTypeRead = staffTypeRead;
	}
	public int getStaffTypeAdd() {
		return StaffTypeAdd;
	}
	public void setStaffTypeAdd(int staffTypeAdd) {
		StaffTypeAdd = staffTypeAdd;
	}
	public int getStaffTypeEdit() {
		return StaffTypeEdit;
	}
	public void setStaffTypeEdit(int staffTypeEdit) {
		StaffTypeEdit = staffTypeEdit;
	}
	public int getStaffTypeDelete() {
		return StaffTypeDelete;
	}
	public void setStaffTypeDelete(int staffTypeDelete) {
		StaffTypeDelete = staffTypeDelete;
	}
	public int getMemberRead() {
		return MemberRead;
	}
	public void setMemberRead(int memberRead) {
		MemberRead = memberRead;
	}
	public int getMemberAdd() {
		return MemberAdd;
	}
	public void setMemberAdd(int memberAdd) {
		MemberAdd = memberAdd;
	}
	public int getMemberEdit() {
		return MemberEdit;
	}
	public void setMemberEdit(int memberEdit) {
		MemberEdit = memberEdit;
	}
	public int getMemberDelete() {
		return MemberDelete;
	}
	public void setMemberDelete(int memberDelete) {
		MemberDelete = memberDelete;
	}
	public int getWorkoutRecordRead() {
		return WorkoutRecordRead;
	}
	public void setWorkoutRecordRead(int workoutRecordRead) {
		WorkoutRecordRead = workoutRecordRead;
	}
	public int getWorkoutRecordAdd() {
		return WorkoutRecordAdd;
	}
	public void setWorkoutRecordAdd(int workoutRecordAdd) {
		WorkoutRecordAdd = workoutRecordAdd;
	}
	public int getWorkoutRecordDelete() {
		return WorkoutRecordDelete;
	}
	public void setWorkoutRecordDelete(int workoutRecordDelete) {
		WorkoutRecordDelete = workoutRecordDelete;
	}
	public int getFinacialRecordRead() {
		return FinacialRecordRead;
	}
	public void setFinacialRecordRead(int finacialRecordRead) {
		FinacialRecordRead = finacialRecordRead;
	}
	public int getFinacialRecordAdd() {
		return FinacialRecordAdd;
	}
	public void setFinacialRecordAdd(int finacialRecordAdd) {
		FinacialRecordAdd = finacialRecordAdd;
	}
	public int getFinacialRecordEdit() {
		return FinacialRecordEdit;
	}
	public void setFinacialRecordEdit(int finacialRecordEdit) {
		FinacialRecordEdit = finacialRecordEdit;
	}
	public int getFinacialRecordDelete() {
		return FinacialRecordDelete;
	}
	public void setFinacialRecordDelete(int finacialRecordDelete) {
		FinacialRecordDelete = finacialRecordDelete;
	}
	@Override
	public String toString() {
		return "UserAuthority [Username=" + Username + ", AuthorityManage=" + AuthorityManage + ", StaffRead="
				+ StaffRead + ", StaffAdd=" + StaffAdd + ", StaffEdit=" + StaffEdit + ", StaffDelete=" + StaffDelete
				+ ", StaffTypeRead=" + StaffTypeRead + ", StaffTypeAdd=" + StaffTypeAdd + ", StaffTypeEdit="
				+ StaffTypeEdit + ", StaffTypeDelete=" + StaffTypeDelete + ", MemberRead=" + MemberRead + ", MemberAdd="
				+ MemberAdd + ", MemberEdit=" + MemberEdit + ", MemberDelete=" + MemberDelete + ", WorkoutRecordRead="
				+ WorkoutRecordRead + ", WorkoutRecordAdd=" + WorkoutRecordAdd + ", WorkoutRecordDelete="
				+ WorkoutRecordDelete + ", FinacialRecordRead=" + FinacialRecordRead + ", FinacialRecordAdd="
				+ FinacialRecordAdd + ", FinacialRecordEdit=" + FinacialRecordEdit + ", FinacialRecordDelete="
				+ FinacialRecordDelete + "]";
	}
	
}
