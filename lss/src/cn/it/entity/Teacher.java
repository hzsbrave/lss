package cn.it.entity;

import java.util.Date;

public class Teacher extends TeacherParam{
    private Integer id;

    private Integer userId;

    private String teacherName;

    private String teacheNo;

    private int gender;
    private String genderStr;

    private String natives;

    private String national;

    private Date birthday;

    private Date enterDate;

    private String phone;

    private String familyAddress;

    private String nowAddress;

    private String idcard;

    private String political;

    private String xueliId;
    private String password;
    private int belong;

    public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGenderStr() {
		return genderStr;
	}

	public void setGenderStr(String genderStr) {
		this.genderStr = genderStr;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getTeacheNo() {
        return teacheNo;
    }

    public void setTeacheNo(String teacheNo) {
        this.teacheNo = teacheNo;
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

    public String getNational() {
        return national;
    }

    public void setNational(String national) {
        this.national = national;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getEnterDate() {
        return enterDate;
    }

    public void setEnterDate(Date enterDate) {
        this.enterDate = enterDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFamilyAddress() {
        return familyAddress;
    }

    public void setFamilyAddress(String familyAddress) {
        this.familyAddress = familyAddress;
    }

    public String getNowAddress() {
        return nowAddress;
    }

    public void setNowAddress(String nowAddress) {
        this.nowAddress = nowAddress;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getPolitical() {
        return political;
    }

    public void setPolitical(String political) {
        this.political = political;
    }

	public String getXueliId() {
		return xueliId;
	}

	public void setXueliId(String xueliId) {
		this.xueliId = xueliId;
	}

	
	public int getBelong() {
		return belong;
	}

	public void setBelong(int belong) {
		this.belong = belong;
	}

	@Override
	public String toString() {
		return "Teacher [id=" + id + ", userId=" + userId + ", teacherName=" + teacherName + ", teacheNo=" + teacheNo
				+ ", gender=" + gender + ", genderStr=" + genderStr + ", natives=" + natives + ", national=" + national
				+ ", birthday=" + birthday + ", enterDate=" + enterDate + ", phone=" + phone + ", familyAddress="
				+ familyAddress + ", nowAddress=" + nowAddress + ", idcard=" + idcard + ", political=" + political
				+ ", xueliId=" + xueliId + ", password=" + password + ", belong=" + belong + "]";
	}
}