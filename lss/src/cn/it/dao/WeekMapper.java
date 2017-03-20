package cn.it.dao;

import cn.it.entity.Week;
import cn.it.entity.WeekExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WeekMapper {
    int countByExample(WeekExample example);

    int deleteByExample(WeekExample example);

    int deleteByPrimaryKey(Integer weekId);

    int insert(Week record);

    int insertSelective(Week record);

    List<Week> selectByExample(WeekExample example);

    Week selectByPrimaryKey(Integer weekId);

    int updateByExampleSelective(@Param("record") Week record, @Param("example") WeekExample example);

    int updateByExample(@Param("record") Week record, @Param("example") WeekExample example);

    int updateByPrimaryKeySelective(Week record);

    int updateByPrimaryKey(Week record);
}