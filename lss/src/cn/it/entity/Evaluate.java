package cn.it.entity;

public class Evaluate {
    private Integer id;

    private Integer studentId;

    private Integer evaluateScore;

    private String evaluateText;

    private Integer classCourseId;
    
    private Integer courseId;

    public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
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
				+ ", evaluateText=" + evaluateText + ", classCourseId=" + classCourseId + ", courseId=" + courseId
				+ "]";
	}
    
}