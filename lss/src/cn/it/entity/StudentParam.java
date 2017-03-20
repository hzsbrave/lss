package cn.it.entity;

public class StudentParam extends Params{
	private Integer academyId;
	private Integer majorId;
	private Integer classesId;
	private String key;
	public Integer getAcademyId() {
		return academyId;
	}
	public void setAcademyId(Integer academyId) {
		this.academyId = academyId;
	}
	public Integer getMajorId() {
		return majorId;
	}
	public void setMajorId(Integer majorId) {
		this.majorId = majorId;
	}
	public Integer getClassesId() {
		return classesId;
	}
	public void setClassesId(Integer classesId) {
		this.classesId = classesId;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	@Override
	public String toString() {
		return "StudentParam [academyId=" + academyId + ", majorId=" + majorId + ", classesId=" + classesId + ", key="
				+ key + "]";
	}
}
