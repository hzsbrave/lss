package cn.it.entity;

public class TeacherParam extends Params{
	private Integer academyId;
	private String key;
	public Integer getAcademyId() {
		return academyId;
	}
	public void setAcademyId(Integer academyId) {
		this.academyId = academyId;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	@Override
	public String toString() {
		return "TeacherParam [academyId=" + academyId + ", key=" + key + "]";
	}
}
