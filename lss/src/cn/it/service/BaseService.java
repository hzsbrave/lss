package cn.it.service;

import java.util.List;

import cn.it.entity.Page;

public interface BaseService<T> {
	
	//添加一条记录
	public int insert(T entity) throws Exception;
	//修改
	public int update(T entity) throws Exception;
	
	//删除
	public int delete(T entity) throws Exception;
	
	//查询列表
	public Object selectList(T entity);
	//my分页
	//public List<T> selectListByPage(String page,String rows,T entity);
	
	//（主）分页查询
	public Page<T> selectPage(Page<T> page);
	//多条件分页查询
	//public Page<T> select(Page<T> page);
	
	//总记录数
	//public int getCount();

	//根据对象主键查询
	public T select(int id);
	public T selectById(T entity);
	
	//批量删除
	public int deleteList(String[] supIds) throws Exception;

}
