package com.oopsw.dt;

import java.sql.Date;

public class UserInfoDTO {
	//s.student_name, s.email, m.college, m.major_name, s.entrance_date, s.birthday, address, s.statement FROM students s, majors m WHERE s.student_id
	private String studentName;
	private String email;
	private String college;
	private String majorName;
	private String entranceDate;
	private String birthday;
	private String phone;
	private String address;
	private String statement;
	
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getEntranceDate() {
		return entranceDate;
	}
	public void setEntranceDate(Date entranceDate) {
		this.entranceDate = entranceDate.toString();
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday.toString();
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatement() {
		return statement;
	}
	public void setStatement(String statement) {
		this.statement = statement;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "UserInfoDTO [studentName=" + studentName + ", email=" + email + ", college=" + college + ", majorName="
				+ majorName + ", entranceDate=" + entranceDate + ", birthday=" + birthday + ", phone=" + phone
				+ ", address=" + address + ", statement=" + statement + "]";
	}
	
	
	
}
