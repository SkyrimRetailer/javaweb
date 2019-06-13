package com.skyoung.mvcapp.domain;

public class RoleAuthority {
	private String Rolename;
	private int AuthorityManage = 0;
	private int StaffRead = 0;
	private int StaffAdd = 0;
	private int StaffEdit = 0;
	private int StaffDelete = 0;
	private int StaffTypeRead = 0;
	private int StaffTypeAdd = 0;
	private int StaffTypeEdit = 0;
	private int StaffTypeDelete = 0;
	private int MemberRead = 0;
	private int MemberAdd = 0;
	private int MemberEdit = 0;
	private int MemberDelete = 0;
	private int WorkoutRecordRead = 0;
	private int WorkoutRecordAdd = 0;
	private int WorkoutRecordDelete = 0;
	private int FinacialRecordRead = 0;
	private int FinacialRecordAdd = 0;
	private int FinacialRecordEdit = 0;
	private int FinacialRecordDelete = 0;
	public String getRolename() {
		return Rolename;
	}
	public void setRolename(String rolename) {
		Rolename = rolename;
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
		return "RoleAuthority [Rolename=" + Rolename + ", AuthorityManage=" + AuthorityManage + ", StaffRead="
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
