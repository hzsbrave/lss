package cn.it.dao;

import cn.it.entity.CourseDetail;
import cn.it.entity.CourseDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseDetailMapper {
    int countByExample(CourseDetailExample example);

    int deleteByExample(CourseDetailExample example);

    int deleteByPrimaryKey(Integer tcdId);

    int insert(CourseDetail record);

    int insertSelective(CourseDetail record);

    List<CourseDetail> selectByExample(CourseDetailExample example);

    CourseDetail selectByPrimaryKey(Integer tcdId);

    int updateByExampleSelective(@Param("record") CourseDetail record, @Param("example") CourseDetailExample example);

    int updateByExample(@Param("record") CourseDetail record, @Param("example") CourseDetailExample example);

    int updateByPrimaryKeySelective(CourseDetail record);

    int updateByPrimaryKey(CourseDetail record);
    
    public long addCourseDetailList(List<CourseDetail> list);
    
    public int deleteList(String[] array);
    
    public List<CourseDetail> selectByCourseId(int courseId);
}