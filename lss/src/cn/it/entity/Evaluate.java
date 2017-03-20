package cn.it.entity;

public class Evaluate {
    private Integer id;

    private String studentId;

    private Integer evaluateScore;

    private String evaluateText;

    private Integer classCourseId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }

    public Integer getEvaluateScore() {
        return evaluateScore;
    }

    public void setEvaluateScore(Integer evaluateScore) {
        this.evaluateScore = evaluateScore;
    }

    public String getEvaluateText() {
        return evaluateText;
    }

    public void setEvaluateText(String evaluateText) {
        this.evaluateText = evaluateText == null ? null : evaluateText.trim();
    }

    public Integer getClassCourseId() {
        return classCourseId;
    }

    public void setClassCourseId(Integer classCourseId) {
        this.classCourseId = classCourseId;
    }

	@Override
	public String toString() {
		return "Evaluate [id=" + id + ", studentId=" + studentId + ", evaluateScore=" + evaluateScore
				+ ", evaluateText=" + evaluateText + ", classCourseId=" + classCourseId + "]";
	}
    
}