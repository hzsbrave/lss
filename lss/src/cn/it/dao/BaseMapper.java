package cn.it.dao;

import java.util.List;

import cn.it.entity.Page;

public interface BaseMapper<T> {
	
	//添加一条记录
	public int insert(T entity);
	//修改
	public int update(T entity);
	
	//删除
	public int delete(T entity);//要考虑组合主键，所以传对象
	
	//查询
	public List<T> selectList(T entity);
	//my分页
	//public List<T> selectListByPage(Map map);
	//分页查询
	public List<T> selectPageList(Page<T> page);
	//多条件分页查询
	//public List<T> select(Page<T> page);
	public int selectCount(Page<T> page);
	
	//总记录数
	public int getCount(Page<T> page);
	
	//根据对象主键查询
	public T select(int id);
	public T selectById(T entity);
	
	//批量删除
	public int deleteList(String[] supIds);


}
