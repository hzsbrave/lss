package cn.it.entity;

import java.util.Date;

public class StudentSolr {
	private int sid;
	private String student_no;
	private String student_name;
	private int gender;
	private String natives;
	private Date birthday;
	private String address;
	private Date enter_date;
	private String phone;
	private String QQ;
	private String email;
	private String national;
	private String political;
	private String idCard;
	private String family_phone;
	private String middle_school;
	private String grade;
	private String examinee	;
	private int class_id;
	private String class_name;
	private int stu_count;
	private int major_id;
	private String major_name;
	private int system;
	private int academy_id;
	private String academy_name;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getStudent_no() {
		return student_no;
	}
	public void setStudent_no(String student_no) {
		this.student_no = student_no;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getNatives() {
		return natives;
	}
	public void setNatives(String natives) {
		this.natives = natives;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getEnter_date() {
		return enter_date;
	}
	public void setEnter_date(Date enter_date) {
		this.enter_date = enter_date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNational() {
		return national;
	}
	public void setNational(String national) {
		this.national = national;
	}
	public String getPolitical() {
		return political;
	}
	public void setPolitical(String political) {
		this.political = political;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getFamily_phone() {
		return family_phone;
	}
	public void setFamily_phone(String family_phone) {
		this.family_phone = family_phone;
	}
	public String getMiddle_school() {
		return middle_school;
	}
	public void setMiddle_school(String middle_school) {
		this.middle_school = middle_school;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getExaminee() {
		return examinee;
	}
	public void setExaminee(String examinee) {
		this.examinee = examinee;
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public int getStu_count() {
		return stu_count;
	}
	public void setStu_count(int stu_count) {
		this.stu_count = stu_count;
	}
	public int getMajor_id() {
		return major_id;
	}
	public void setMajor_id(int major_id) {
		this.major_id = major_id;
	}
	public String getMajor_name() {
		return major_name;
	}
	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}
	public int getSystem() {
		return system;
	}
	public void setSystem(int system) {
		this.system = system;
	}
	public int getAcademy_id() {
		return academy_id;
	}
	public void setAcademy_id(int academy_id) {
		this.academy_id = academy_id;
	}
	public String getAcademy_name() {
		return academy_name;
	}
	public void setAcademy_name(String academy_name) {
		this.academy_name = academy_name;
	}
	@Override
	public String toString() {
		return "StudentSolrVO [sid=" + sid + ", student_no=" + student_no + ", student_name=" + student_name
				+ ", gender=" + gender + ", natives=" + natives + ", birthday=" + birthday + ", address=" + address
				+ ", enter_date=" + enter_date + ", phone=" + phone + ", QQ=" + QQ + ", email=" + email + ", national="
				+ national + ", political=" + political + ", idCard=" + idCard + ", family_phone=" + family_phone
				+ ", middle_school=" + middle_school + ", grade=" + grade + ", examinee=" + examinee + ", class_id="
				+ class_id + ", class_name=" + class_name + ", stu_count=" + stu_count + ", major_id=" + major_id
				+ ", major_name=" + major_name + ", system=" + system + ", academy_id=" + academy_id + ", academy_name="
				+ academy_name + "]";
	}
}
