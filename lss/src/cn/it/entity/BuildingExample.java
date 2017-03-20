package cn.it.entity;

import java.util.ArrayList;
import java.util.List;

public class BuildingExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BuildingExample() {
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

        public Criteria andBuildingIdIsNull() {
            addCriterion("building_id is null");
            return (Criteria) this;
        }

        public Criteria andBuildingIdIsNotNull() {
            addCriterion("building_id is not null");
            return (Criteria) this;
        }

        public Criteria andBuildingIdEqualTo(Integer value) {
            addCriterion("building_id =", value, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdNotEqualTo(Integer value) {
            addCriterion("building_id <>", value, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdGreaterThan(Integer value) {
            addCriterion("building_id >", value, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("building_id >=", value, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdLessThan(Integer value) {
            addCriterion("building_id <", value, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdLessThanOrEqualTo(Integer value) {
            addCriterion("building_id <=", value, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdIn(List<Integer> values) {
            addCriterion("building_id in", values, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdNotIn(List<Integer> values) {
            addCriterion("building_id not in", values, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdBetween(Integer value1, Integer value2) {
            addCriterion("building_id between", value1, value2, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingIdNotBetween(Integer value1, Integer value2) {
            addCriterion("building_id not between", value1, value2, "buildingId");
            return (Criteria) this;
        }

        public Criteria andBuildingNameIsNull() {
            addCriterion("building_name is null");
            return (Criteria) this;
        }

        public Criteria andBuildingNameIsNotNull() {
            addCriterion("building_name is not null");
            return (Criteria) this;
        }

        public Criteria andBuildingNameEqualTo(String value) {
            addCriterion("building_name =", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameNotEqualTo(String value) {
            addCriterion("building_name <>", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameGreaterThan(String value) {
            addCriterion("building_name >", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameGreaterThanOrEqualTo(String value) {
            addCriterion("building_name >=", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameLessThan(String value) {
            addCriterion("building_name <", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameLessThanOrEqualTo(String value) {
            addCriterion("building_name <=", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameLike(String value) {
            addCriterion("building_name like", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameNotLike(String value) {
            addCriterion("building_name not like", value, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameIn(List<String> values) {
            addCriterion("building_name in", values, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameNotIn(List<String> values) {
            addCriterion("building_name not in", values, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameBetween(String value1, String value2) {
            addCriterion("building_name between", value1, value2, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingNameNotBetween(String value1, String value2) {
            addCriterion("building_name not between", value1, value2, "buildingName");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressIsNull() {
            addCriterion("building_address is null");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressIsNotNull() {
            addCriterion("building_address is not null");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressEqualTo(String value) {
            addCriterion("building_address =", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressNotEqualTo(String value) {
            addCriterion("building_address <>", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressGreaterThan(String value) {
            addCriterion("building_address >", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressGreaterThanOrEqualTo(String value) {
            addCriterion("building_address >=", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressLessThan(String value) {
            addCriterion("building_address <", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressLessThanOrEqualTo(String value) {
            addCriterion("building_address <=", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressLike(String value) {
            addCriterion("building_address like", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressNotLike(String value) {
            addCriterion("building_address not like", value, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressIn(List<String> values) {
            addCriterion("building_address in", values, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressNotIn(List<String> values) {
            addCriterion("building_address not in", values, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressBetween(String value1, String value2) {
            addCriterion("building_address between", value1, value2, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingAddressNotBetween(String value1, String value2) {
            addCriterion("building_address not between", value1, value2, "buildingAddress");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerIsNull() {
            addCriterion("building_manager is null");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerIsNotNull() {
            addCriterion("building_manager is not null");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerEqualTo(String value) {
            addCriterion("building_manager =", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerNotEqualTo(String value) {
            addCriterion("building_manager <>", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerGreaterThan(String value) {
            addCriterion("building_manager >", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerGreaterThanOrEqualTo(String value) {
            addCriterion("building_manager >=", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerLessThan(String value) {
            addCriterion("building_manager <", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerLessThanOrEqualTo(String value) {
            addCriterion("building_manager <=", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerLike(String value) {
            addCriterion("building_manager like", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerNotLike(String value) {
            addCriterion("building_manager not like", value, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerIn(List<String> values) {
            addCriterion("building_manager in", values, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerNotIn(List<String> values) {
            addCriterion("building_manager not in", values, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerBetween(String value1, String value2) {
            addCriterion("building_manager between", value1, value2, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingManagerNotBetween(String value1, String value2) {
            addCriterion("building_manager not between", value1, value2, "buildingManager");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneIsNull() {
            addCriterion("building_phone is null");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneIsNotNull() {
            addCriterion("building_phone is not null");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneEqualTo(String value) {
            addCriterion("building_phone =", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneNotEqualTo(String value) {
            addCriterion("building_phone <>", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneGreaterThan(String value) {
            addCriterion("building_phone >", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("building_phone >=", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneLessThan(String value) {
            addCriterion("building_phone <", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneLessThanOrEqualTo(String value) {
            addCriterion("building_phone <=", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneLike(String value) {
            addCriterion("building_phone like", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneNotLike(String value) {
            addCriterion("building_phone not like", value, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneIn(List<String> values) {
            addCriterion("building_phone in", values, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneNotIn(List<String> values) {
            addCriterion("building_phone not in", values, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneBetween(String value1, String value2) {
            addCriterion("building_phone between", value1, value2, "buildingPhone");
            return (Criteria) this;
        }

        public Criteria andBuildingPhoneNotBetween(String value1, String value2) {
            addCriterion("building_phone not between", value1, value2, "buildingPhone");
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