package cn.it.entity;

import java.util.Date;

public class CourseDetail {
    private Integer tcdId;

    private Integer teacherId;

    private Integer courseId;

    private Integer weekId;

    private Integer dayId;

    private Integer sectionId;

    private Integer buildingRoomId;

    private Integer selectNum;

    private String type;

    private String credit;

    private Integer likeNum;

    private String courseIntroduce;

    private Date createTime;

    private Date lastUpdateTime;

    public Integer getTcdId() {
        return tcdId;
    }

    public void setTcdId(Integer tcdId) {
        this.tcdId = tcdId;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getWeekId() {
        return weekId;
    }

    public void setWeekId(Integer weekId) {
        this.weekId = weekId;
    }

    public Integer getDayId() {
        return dayId;
    }

    public void setDayId(Integer dayId) {
        this.dayId = dayId;
    }

    public Integer getSectionId() {
        return sectionId;
    }

    public void setSectionId(Integer sectionId) {
        this.sectionId = sectionId;
    }

    public Integer getBuildingRoomId() {
        return buildingRoomId;
    }

    public void setBuildingRoomId(Integer buildingRoomId) {
        this.buildingRoomId = buildingRoomId;
    }

    public Integer getSelectNum() {
        return selectNum;
    }

    public void setSelectNum(Integer selectNum) {
        this.selectNum = selectNum;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit == null ? null : credit.trim();
    }

    public Integer getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(Integer likeNum) {
        this.likeNum = likeNum;
    }

    public String getCourseIntroduce() {
        return courseIntroduce;
    }

    public void setCourseIntroduce(String courseIntroduce) {
        this.courseIntroduce = courseIntroduce == null ? null : courseIntroduce.trim();
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

	@Override
	public String toString() {
		return "CourseDetail [tcdId=" + tcdId + ", teacherId=" + teacherId + ", courseId=" + courseId + ", weekId="
				+ weekId + ", dayId=" + dayId + ", sectionId=" + sectionId + ", buildingRoomId=" + buildingRoomId
				+ ", selectNum=" + selectNum + ", type=" + type + ", credit=" + credit + ", likeNum=" + likeNum
				+ ", courseIntroduce=" + courseIntroduce + ", createTime=" + createTime + ", lastUpdateTime="
				+ lastUpdateTime + "]";
	}
}