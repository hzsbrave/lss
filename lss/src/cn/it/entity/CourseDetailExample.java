package cn.it.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class CourseDetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseDetailExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andTcdIdIsNull() {
            addCriterion("tcd_id is null");
            return (Criteria) this;
        }

        public Criteria andTcdIdIsNotNull() {
            addCriterion("tcd_id is not null");
            return (Criteria) this;
        }

        public Criteria andTcdIdEqualTo(Integer value) {
            addCriterion("tcd_id =", value, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdNotEqualTo(Integer value) {
            addCriterion("tcd_id <>", value, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdGreaterThan(Integer value) {
            addCriterion("tcd_id >", value, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("tcd_id >=", value, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdLessThan(Integer value) {
            addCriterion("tcd_id <", value, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdLessThanOrEqualTo(Integer value) {
            addCriterion("tcd_id <=", value, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdIn(List<Integer> values) {
            addCriterion("tcd_id in", values, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdNotIn(List<Integer> values) {
            addCriterion("tcd_id not in", values, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdBetween(Integer value1, Integer value2) {
            addCriterion("tcd_id between", value1, value2, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTcdIdNotBetween(Integer value1, Integer value2) {
            addCriterion("tcd_id not between", value1, value2, "tcdId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdIsNull() {
            addCriterion("teacher_id is null");
            return (Criteria) this;
        }

        public Criteria andTeacherIdIsNotNull() {
            addCriterion("teacher_id is not null");
            return (Criteria) this;
        }

        public Criteria andTeacherIdEqualTo(Integer value) {
            addCriterion("teacher_id =", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdNotEqualTo(Integer value) {
            addCriterion("teacher_id <>", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdGreaterThan(Integer value) {
            addCriterion("teacher_id >", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("teacher_id >=", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdLessThan(Integer value) {
            addCriterion("teacher_id <", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdLessThanOrEqualTo(Integer value) {
            addCriterion("teacher_id <=", value, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdIn(List<Integer> values) {
            addCriterion("teacher_id in", values, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdNotIn(List<Integer> values) {
            addCriterion("teacher_id not in", values, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdBetween(Integer value1, Integer value2) {
            addCriterion("teacher_id between", value1, value2, "teacherId");
            return (Criteria) this;
        }

        public Criteria andTeacherIdNotBetween(Integer value1, Integer value2) {
            addCriterion("teacher_id not between", value1, value2, "teacherId");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNull() {
            addCriterion("course_id is null");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNotNull() {
            addCriterion("course_id is not null");
            return (Criteria) this;
        }

        public Criteria andCourseIdEqualTo(Integer value) {
            addCriterion("course_id =", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotEqualTo(Integer value) {
            addCriterion("course_id <>", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThan(Integer value) {
            addCriterion("course_id >", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("course_id >=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThan(Integer value) {
            addCriterion("course_id <", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThanOrEqualTo(Integer value) {
            addCriterion("course_id <=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdIn(List<Integer> values) {
            addCriterion("course_id in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotIn(List<Integer> values) {
            addCriterion("course_id not in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdBetween(Integer value1, Integer value2) {
            addCriterion("course_id between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("course_id not between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andWeekIdIsNull() {
            addCriterion("week_id is null");
            return (Criteria) this;
        }

        public Criteria andWeekIdIsNotNull() {
            addCriterion("week_id is not null");
            return (Criteria) this;
        }

        public Criteria andWeekIdEqualTo(Integer value) {
            addCriterion("week_id =", value, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdNotEqualTo(Integer value) {
            addCriterion("week_id <>", value, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdGreaterThan(Integer value) {
            addCriterion("week_id >", value, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("week_id >=", value, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdLessThan(Integer value) {
            addCriterion("week_id <", value, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdLessThanOrEqualTo(Integer value) {
            addCriterion("week_id <=", value, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdIn(List<Integer> values) {
            addCriterion("week_id in", values, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdNotIn(List<Integer> values) {
            addCriterion("week_id not in", values, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdBetween(Integer value1, Integer value2) {
            addCriterion("week_id between", value1, value2, "weekId");
            return (Criteria) this;
        }

        public Criteria andWeekIdNotBetween(Integer value1, Integer value2) {
            addCriterion("week_id not between", value1, value2, "weekId");
            return (Criteria) this;
        }

        public Criteria andDayIdIsNull() {
            addCriterion("day_id is null");
            return (Criteria) this;
        }

        public Criteria andDayIdIsNotNull() {
            addCriterion("day_id is not null");
            return (Criteria) this;
        }

        public Criteria andDayIdEqualTo(Integer value) {
            addCriterion("day_id =", value, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdNotEqualTo(Integer value) {
            addCriterion("day_id <>", value, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdGreaterThan(Integer value) {
            addCriterion("day_id >", value, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("day_id >=", value, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdLessThan(Integer value) {
            addCriterion("day_id <", value, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdLessThanOrEqualTo(Integer value) {
            addCriterion("day_id <=", value, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdIn(List<Integer> values) {
            addCriterion("day_id in", values, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdNotIn(List<Integer> values) {
            addCriterion("day_id not in", values, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdBetween(Integer value1, Integer value2) {
            addCriterion("day_id between", value1, value2, "dayId");
            return (Criteria) this;
        }

        public Criteria andDayIdNotBetween(Integer value1, Integer value2) {
            addCriterion("day_id not between", value1, value2, "dayId");
            return (Criteria) this;
        }

        public Criteria andSectionIdIsNull() {
            addCriterion("section_id is null");
            return (Criteria) this;
        }

        public Criteria andSectionIdIsNotNull() {
            addCriterion("section_id is not null");
            return (Criteria) this;
        }

        public Criteria andSectionIdEqualTo(Integer value) {
            addCriterion("section_id =", value, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdNotEqualTo(Integer value) {
            addCriterion("section_id <>", value, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdGreaterThan(Integer value) {
            addCriterion("section_id >", value, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("section_id >=", value, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdLessThan(Integer value) {
            addCriterion("section_id <", value, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdLessThanOrEqualTo(Integer value) {
            addCriterion("section_id <=", value, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdIn(List<Integer> values) {
            addCriterion("section_id in", values, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdNotIn(List<Integer> values) {
            addCriterion("section_id not in", values, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdBetween(Integer value1, Integer value2) {
            addCriterion("section_id between", value1, value2, "sectionId");
            return (Criteria) this;
        }

        public Criteria andSectionIdNotBetween(Integer value1, Integer value2) {
            addCriterion("section_id not between", value1, value2, "sectionId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdIsNull() {
            addCriterion("building_room_id is null");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdIsNotNull() {
            addCriterion("building_room_id is not null");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdEqualTo(Integer value) {
            addCriterion("building_room_id =", value, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdNotEqualTo(Integer value) {
            addCriterion("building_room_id <>", value, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdGreaterThan(Integer value) {
            addCriterion("building_room_id >", value, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("building_room_id >=", value, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdLessThan(Integer value) {
            addCriterion("building_room_id <", value, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdLessThanOrEqualTo(Integer value) {
            addCriterion("building_room_id <=", value, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdIn(List<Integer> values) {
            addCriterion("building_room_id in", values, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdNotIn(List<Integer> values) {
            addCriterion("building_room_id not in", values, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdBetween(Integer value1, Integer value2) {
            addCriterion("building_room_id between", value1, value2, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andBuildingRoomIdNotBetween(Integer value1, Integer value2) {
            addCriterion("building_room_id not between", value1, value2, "buildingRoomId");
            return (Criteria) this;
        }

        public Criteria andSelectNumIsNull() {
            addCriterion("select_num is null");
            return (Criteria) this;
        }

        public Criteria andSelectNumIsNotNull() {
            addCriterion("select_num is not null");
            return (Criteria) this;
        }

        public Criteria andSelectNumEqualTo(Integer value) {
            addCriterion("select_num =", value, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumNotEqualTo(Integer value) {
            addCriterion("select_num <>", value, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumGreaterThan(Integer value) {
            addCriterion("select_num >", value, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("select_num >=", value, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumLessThan(Integer value) {
            addCriterion("select_num <", value, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumLessThanOrEqualTo(Integer value) {
            addCriterion("select_num <=", value, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumIn(List<Integer> values) {
            addCriterion("select_num in", values, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumNotIn(List<Integer> values) {
            addCriterion("select_num not in", values, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumBetween(Integer value1, Integer value2) {
            addCriterion("select_num between", value1, value2, "selectNum");
            return (Criteria) this;
        }

        public Criteria andSelectNumNotBetween(Integer value1, Integer value2) {
            addCriterion("select_num not between", value1, value2, "selectNum");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(String value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(String value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(String value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(String value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(String value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(String value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLike(String value) {
            addCriterion("type like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotLike(String value) {
            addCriterion("type not like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<String> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<String> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(String value1, String value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(String value1, String value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andCreditIsNull() {
            addCriterion("credit is null");
            return (Criteria) this;
        }

        public Criteria andCreditIsNotNull() {
            addCriterion("credit is not null");
            return (Criteria) this;
        }

        public Criteria andCreditEqualTo(String value) {
            addCriterion("credit =", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditNotEqualTo(String value) {
            addCriterion("credit <>", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditGreaterThan(String value) {
            addCriterion("credit >", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditGreaterThanOrEqualTo(String value) {
            addCriterion("credit >=", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditLessThan(String value) {
            addCriterion("credit <", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditLessThanOrEqualTo(String value) {
            addCriterion("credit <=", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditLike(String value) {
            addCriterion("credit like", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditNotLike(String value) {
            addCriterion("credit not like", value, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditIn(List<String> values) {
            addCriterion("credit in", values, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditNotIn(List<String> values) {
            addCriterion("credit not in", values, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditBetween(String value1, String value2) {
            addCriterion("credit between", value1, value2, "credit");
            return (Criteria) this;
        }

        public Criteria andCreditNotBetween(String value1, String value2) {
            addCriterion("credit not between", value1, value2, "credit");
            return (Criteria) this;
        }

        public Criteria andLikeNumIsNull() {
            addCriterion("like_num is null");
            return (Criteria) this;
        }

        public Criteria andLikeNumIsNotNull() {
            addCriterion("like_num is not null");
            return (Criteria) this;
        }

        public Criteria andLikeNumEqualTo(Integer value) {
            addCriterion("like_num =", value, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumNotEqualTo(Integer value) {
            addCriterion("like_num <>", value, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumGreaterThan(Integer value) {
            addCriterion("like_num >", value, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("like_num >=", value, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumLessThan(Integer value) {
            addCriterion("like_num <", value, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumLessThanOrEqualTo(Integer value) {
            addCriterion("like_num <=", value, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumIn(List<Integer> values) {
            addCriterion("like_num in", values, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumNotIn(List<Integer> values) {
            addCriterion("like_num not in", values, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumBetween(Integer value1, Integer value2) {
            addCriterion("like_num between", value1, value2, "likeNum");
            return (Criteria) this;
        }

        public Criteria andLikeNumNotBetween(Integer value1, Integer value2) {
            addCriterion("like_num not between", value1, value2, "likeNum");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceIsNull() {
            addCriterion("course_introduce is null");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceIsNotNull() {
            addCriterion("course_introduce is not null");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceEqualTo(String value) {
            addCriterion("course_introduce =", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceNotEqualTo(String value) {
            addCriterion("course_introduce <>", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceGreaterThan(String value) {
            addCriterion("course_introduce >", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceGreaterThanOrEqualTo(String value) {
            addCriterion("course_introduce >=", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceLessThan(String value) {
            addCriterion("course_introduce <", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceLessThanOrEqualTo(String value) {
            addCriterion("course_introduce <=", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceLike(String value) {
            addCriterion("course_introduce like", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceNotLike(String value) {
            addCriterion("course_introduce not like", value, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceIn(List<String> values) {
            addCriterion("course_introduce in", values, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceNotIn(List<String> values) {
            addCriterion("course_introduce not in", values, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceBetween(String value1, String value2) {
            addCriterion("course_introduce between", value1, value2, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCourseIntroduceNotBetween(String value1, String value2) {
            addCriterion("course_introduce not between", value1, value2, "courseIntroduce");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterionForJDBCDate("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterionForJDBCDate("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterionForJDBCDate("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeIsNull() {
            addCriterion("last_update_time is null");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeIsNotNull() {
            addCriterion("last_update_time is not null");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeEqualTo(Date value) {
            addCriterionForJDBCDate("last_update_time =", value, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("last_update_time <>", value, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("last_update_time >", value, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("last_update_time >=", value, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeLessThan(Date value) {
            addCriterionForJDBCDate("last_update_time <", value, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("last_update_time <=", value, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeIn(List<Date> values) {
            addCriterionForJDBCDate("last_update_time in", values, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("last_update_time not in", values, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("last_update_time between", value1, value2, "lastUpdateTime");
            return (Criteria) this;
        }

        public Criteria andLastUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("last_update_time not between", value1, value2, "lastUpdateTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}