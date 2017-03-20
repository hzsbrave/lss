package cn.it.dao;

import java.util.List;

import cn.it.entity.Major;

public interface MajorMapper extends BaseMapper<Major> {
    public List<Major> selectListPage(Major major);
    public Major selectMajor(String major_name);
    public List<Major> selectMajorByAcademy(Integer academy_id);
}