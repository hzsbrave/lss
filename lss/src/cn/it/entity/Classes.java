package cn.it.entity;

public class Classes extends ClassesParam{
    private Integer id;

    private String className;

    private String grade;

    private Integer majorId;
    private String majorName;
    private Integer stuCount;

    public Integer getStuCount() {
		return stuCount;
	}

	public void setStuCount(Integer stuCount) {
		this.stuCount = stuCount;
	}

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

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }

	@Override
	public String toString() {
		return "Classes [id=" + id + ", className=" + className + ", grade=" + grade + ", majorId=" + majorId
				+ ", majorName=" + majorName + ", stuCount=" + stuCount + "]";
	}
    
}