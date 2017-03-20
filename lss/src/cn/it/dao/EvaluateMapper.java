package cn.it.dao;

import cn.it.entity.Evaluate;
import cn.it.entity.EvaluateExample;
import cn.it.entity.Teacher;
import cn.it.entity.vo.EvaluateVO;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EvaluateMapper extends BaseMapper<Evaluate>{
    int countByExample(EvaluateExample example);

    int deleteByExample(EvaluateExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Evaluate record);

    int insertSelective(Evaluate record);

    List<Evaluate> selectByExample(EvaluateExample example);

    Evaluate selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Evaluate record, @Param("example") EvaluateExample example);

    int updateByExample(@Param("record") Evaluate record, @Param("example") EvaluateExample example);

    int updateByPrimaryKeySelective(Evaluate record);

    int updateByPrimaryKey(Evaluate record);
    
    List<EvaluateVO> selectEvaluateToTeacher(int teacher_id);
}