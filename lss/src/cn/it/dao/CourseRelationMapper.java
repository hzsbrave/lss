package cn.it.dao;

import cn.it.entity.CourseRelation;
import cn.it.entity.CourseRelationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseRelationMapper {
    int countByExample(CourseRelationExample example);

    int deleteByExample(CourseRelationExample example);

    int deleteByPrimaryKey(Integer tcrId);

    int insert(CourseRelation record);

    int insertSelective(CourseRelation record);

    List<CourseRelation> selectByExample(CourseRelationExample example);

    CourseRelation selectByPrimaryKey(Integer tcrId);

    int updateByExampleSelective(@Param("record") CourseRelation record, @Param("example") CourseRelationExample example);

    int updateByExample(@Param("record") CourseRelation record, @Param("example") CourseRelationExample example);

    int updateByPrimaryKeySelective(CourseRelation record);

    int updateByPrimaryKey(CourseRelation record);
    
    public long addCourseRelationList(List<CourseRelation> list);
}