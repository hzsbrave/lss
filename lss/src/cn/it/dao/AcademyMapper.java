package cn.it.dao;

import java.util.List;

import cn.it.entity.Academy;

public interface AcademyMapper extends BaseMapper<Academy> {
    public List<Academy> selectListPage(Academy academy);
    public Academy selectByName(String academy_name);
}