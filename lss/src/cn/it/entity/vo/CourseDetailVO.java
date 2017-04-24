package cn.it.entity.vo;

import cn.it.entity.Course;

/**
 * Created by 10794 on 2017/4/7.
 */
public class CourseDetailVO extends Course {
    private String ClassName;

    public String getClassName() {
        return ClassName;
    }

    public void setClassName(String className) {
        ClassName = className;
    }

    @Override
    public String toString() {
        return "CourseDetailVO{" +
                "ClassName='" + ClassName + '\'' +
                '}';
    }
}
