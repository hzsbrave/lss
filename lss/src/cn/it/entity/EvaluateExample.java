package cn.it.entity;

import java.util.ArrayList;
import java.util.List;

public class EvaluateExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EvaluateExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andStudentIdIsNull() {
            addCriterion("student_id is null");
            return (Criteria) this;
        }

        public Criteria andStudentIdIsNotNull() {
            addCriterion("student_id is not null");
            return (Criteria) this;
        }

        public Criteria andStudentIdEqualTo(String value) {
            addCriterion("student_id =", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdNotEqualTo(String value) {
            addCriterion("student_id <>", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdGreaterThan(String value) {
            addCriterion("student_id >", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdGreaterThanOrEqualTo(String value) {
            addCriterion("student_id >=", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdLessThan(String value) {
            addCriterion("student_id <", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdLessThanOrEqualTo(String value) {
            addCriterion("student_id <=", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdLike(String value) {
            addCriterion("student_id like", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdNotLike(String value) {
            addCriterion("student_id not like", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdIn(List<String> values) {
            addCriterion("student_id in", values, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdNotIn(List<String> values) {
            addCriterion("student_id not in", values, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdBetween(String value1, String value2) {
            addCriterion("student_id between", value1, value2, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdNotBetween(String value1, String value2) {
            addCriterion("student_id not between", value1, value2, "studentId");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreIsNull() {
            addCriterion("evaluate_score is null");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreIsNotNull() {
            addCriterion("evaluate_score is not null");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreEqualTo(Integer value) {
            addCriterion("evaluate_score =", value, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreNotEqualTo(Integer value) {
            addCriterion("evaluate_score <>", value, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreGreaterThan(Integer value) {
            addCriterion("evaluate_score >", value, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("evaluate_score >=", value, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreLessThan(Integer value) {
            addCriterion("evaluate_score <", value, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreLessThanOrEqualTo(Integer value) {
            addCriterion("evaluate_score <=", value, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreIn(List<Integer> values) {
            addCriterion("evaluate_score in", values, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreNotIn(List<Integer> values) {
            addCriterion("evaluate_score not in", values, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreBetween(Integer value1, Integer value2) {
            addCriterion("evaluate_score between", value1, value2, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("evaluate_score not between", value1, value2, "evaluateScore");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextIsNull() {
            addCriterion("evaluate_text is null");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextIsNotNull() {
            addCriterion("evaluate_text is not null");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextEqualTo(String value) {
            addCriterion("evaluate_text =", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextNotEqualTo(String value) {
            addCriterion("evaluate_text <>", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextGreaterThan(String value) {
            addCriterion("evaluate_text >", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextGreaterThanOrEqualTo(String value) {
            addCriterion("evaluate_text >=", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextLessThan(String value) {
            addCriterion("evaluate_text <", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextLessThanOrEqualTo(String value) {
            addCriterion("evaluate_text <=", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextLike(String value) {
            addCriterion("evaluate_text like", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextNotLike(String value) {
            addCriterion("evaluate_text not like", value, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextIn(List<String> values) {
            addCriterion("evaluate_text in", values, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextNotIn(List<String> values) {
            addCriterion("evaluate_text not in", values, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextBetween(String value1, String value2) {
            addCriterion("evaluate_text between", value1, value2, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andEvaluateTextNotBetween(String value1, String value2) {
            addCriterion("evaluate_text not between", value1, value2, "evaluateText");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdIsNull() {
            addCriterion("class_course_id is null");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdIsNotNull() {
            addCriterion("class_course_id is not null");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdEqualTo(Integer value) {
            addCriterion("class_course_id =", value, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdNotEqualTo(Integer value) {
            addCriterion("class_course_id <>", value, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdGreaterThan(Integer value) {
            addCriterion("class_course_id >", value, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("class_course_id >=", value, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdLessThan(Integer value) {
            addCriterion("class_course_id <", value, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdLessThanOrEqualTo(Integer value) {
            addCriterion("class_course_id <=", value, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdIn(List<Integer> values) {
            addCriterion("class_course_id in", values, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdNotIn(List<Integer> values) {
            addCriterion("class_course_id not in", values, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdBetween(Integer value1, Integer value2) {
            addCriterion("class_course_id between", value1, value2, "classCourseId");
            return (Criteria) this;
        }

        public Criteria andClassCourseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("class_course_id not between", value1, value2, "classCourseId");
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