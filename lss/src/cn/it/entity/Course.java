package cn.it.entity;

import java.util.Date;

public class Course extends Params{
    private Integer id;

    private String courseName;

    private Byte needHours;

    private Integer majorId;

    private Date createDate;
    private String majorName;
    public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Byte getNeedHours() {
        return needHours;
    }

    public void setNeedHours(Byte needHours) {
        this.needHours = needHours;
    }

    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

	@Override
	public String toString() {
		return "Course [id=" + id + ", courseName=" + courseName + ", needHours=" + needHours + ", majorId=" + majorId
				+ ", createDate=" + createDate + ", majorName=" + majorName + "]";
	}
    
}