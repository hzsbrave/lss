package cn.it.entity;

import java.util.Date;

public class CourseRelation {
    private Integer tcrId;

    private Integer studentId;

    private Integer courseDetailId;

    private Date createTime;

    private Date lastUpdateTime;

    public Integer getTcrId() {
        return tcrId;
    }

    public void setTcrId(Integer tcrId) {
        this.tcrId = tcrId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getCourseDetailId() {
        return courseDetailId;
    }

    public void setCourseDetailId(Integer courseDetailId) {
        this.courseDetailId = courseDetailId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }
}