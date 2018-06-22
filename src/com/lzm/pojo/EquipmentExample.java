package com.lzm.pojo;

import java.util.ArrayList;
import java.util.List;

public class EquipmentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EquipmentExample() {
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

        public Criteria andEqIdIsNull() {
            addCriterion("eq_id is null");
            return (Criteria) this;
        }

        public Criteria andEqIdIsNotNull() {
            addCriterion("eq_id is not null");
            return (Criteria) this;
        }

        public Criteria andEqIdEqualTo(Integer value) {
            addCriterion("eq_id =", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdNotEqualTo(Integer value) {
            addCriterion("eq_id <>", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdGreaterThan(Integer value) {
            addCriterion("eq_id >", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("eq_id >=", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdLessThan(Integer value) {
            addCriterion("eq_id <", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdLessThanOrEqualTo(Integer value) {
            addCriterion("eq_id <=", value, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdIn(List<Integer> values) {
            addCriterion("eq_id in", values, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdNotIn(List<Integer> values) {
            addCriterion("eq_id not in", values, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdBetween(Integer value1, Integer value2) {
            addCriterion("eq_id between", value1, value2, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqIdNotBetween(Integer value1, Integer value2) {
            addCriterion("eq_id not between", value1, value2, "eqId");
            return (Criteria) this;
        }

        public Criteria andEqNameIsNull() {
            addCriterion("eq_name is null");
            return (Criteria) this;
        }

        public Criteria andEqNameIsNotNull() {
            addCriterion("eq_name is not null");
            return (Criteria) this;
        }

        public Criteria andEqNameEqualTo(String value) {
            addCriterion("eq_name =", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotEqualTo(String value) {
            addCriterion("eq_name <>", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameGreaterThan(String value) {
            addCriterion("eq_name >", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameGreaterThanOrEqualTo(String value) {
            addCriterion("eq_name >=", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameLessThan(String value) {
            addCriterion("eq_name <", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameLessThanOrEqualTo(String value) {
            addCriterion("eq_name <=", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameLike(String value) {
            addCriterion("eq_name like", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotLike(String value) {
            addCriterion("eq_name not like", value, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameIn(List<String> values) {
            addCriterion("eq_name in", values, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotIn(List<String> values) {
            addCriterion("eq_name not in", values, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameBetween(String value1, String value2) {
            addCriterion("eq_name between", value1, value2, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqNameNotBetween(String value1, String value2) {
            addCriterion("eq_name not between", value1, value2, "eqName");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdIsNull() {
            addCriterion("eq_warehouse_id is null");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdIsNotNull() {
            addCriterion("eq_warehouse_id is not null");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdEqualTo(Integer value) {
            addCriterion("eq_warehouse_id =", value, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdNotEqualTo(Integer value) {
            addCriterion("eq_warehouse_id <>", value, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdGreaterThan(Integer value) {
            addCriterion("eq_warehouse_id >", value, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("eq_warehouse_id >=", value, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdLessThan(Integer value) {
            addCriterion("eq_warehouse_id <", value, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdLessThanOrEqualTo(Integer value) {
            addCriterion("eq_warehouse_id <=", value, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdIn(List<Integer> values) {
            addCriterion("eq_warehouse_id in", values, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdNotIn(List<Integer> values) {
            addCriterion("eq_warehouse_id not in", values, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdBetween(Integer value1, Integer value2) {
            addCriterion("eq_warehouse_id between", value1, value2, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqWarehouseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("eq_warehouse_id not between", value1, value2, "eqWarehouseId");
            return (Criteria) this;
        }

        public Criteria andEqStateIsNull() {
            addCriterion("eq_state is null");
            return (Criteria) this;
        }

        public Criteria andEqStateIsNotNull() {
            addCriterion("eq_state is not null");
            return (Criteria) this;
        }

        public Criteria andEqStateEqualTo(String value) {
            addCriterion("eq_state =", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateNotEqualTo(String value) {
            addCriterion("eq_state <>", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateGreaterThan(String value) {
            addCriterion("eq_state >", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateGreaterThanOrEqualTo(String value) {
            addCriterion("eq_state >=", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateLessThan(String value) {
            addCriterion("eq_state <", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateLessThanOrEqualTo(String value) {
            addCriterion("eq_state <=", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateLike(String value) {
            addCriterion("eq_state like", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateNotLike(String value) {
            addCriterion("eq_state not like", value, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateIn(List<String> values) {
            addCriterion("eq_state in", values, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateNotIn(List<String> values) {
            addCriterion("eq_state not in", values, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateBetween(String value1, String value2) {
            addCriterion("eq_state between", value1, value2, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqStateNotBetween(String value1, String value2) {
            addCriterion("eq_state not between", value1, value2, "eqState");
            return (Criteria) this;
        }

        public Criteria andEqClassIdIsNull() {
            addCriterion("eq_class_id is null");
            return (Criteria) this;
        }

        public Criteria andEqClassIdIsNotNull() {
            addCriterion("eq_class_id is not null");
            return (Criteria) this;
        }

        public Criteria andEqClassIdEqualTo(Integer value) {
            addCriterion("eq_class_id =", value, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdNotEqualTo(Integer value) {
            addCriterion("eq_class_id <>", value, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdGreaterThan(Integer value) {
            addCriterion("eq_class_id >", value, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("eq_class_id >=", value, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdLessThan(Integer value) {
            addCriterion("eq_class_id <", value, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdLessThanOrEqualTo(Integer value) {
            addCriterion("eq_class_id <=", value, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdIn(List<Integer> values) {
            addCriterion("eq_class_id in", values, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdNotIn(List<Integer> values) {
            addCriterion("eq_class_id not in", values, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdBetween(Integer value1, Integer value2) {
            addCriterion("eq_class_id between", value1, value2, "eqClassId");
            return (Criteria) this;
        }

        public Criteria andEqClassIdNotBetween(Integer value1, Integer value2) {
            addCriterion("eq_class_id not between", value1, value2, "eqClassId");
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