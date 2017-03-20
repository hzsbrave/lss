package cn.it.entity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Page<T> {
	private Integer page;//当前页
	private Integer rows;//页大小
	private Integer total;//总记录数
	private List<T> list;
	private T entity;//搜索条件
	private Integer start;//起始行
	private Map<String,Object> map=new HashMap<String, Object>();//返回结果
	//其它不常用关键字，其他表
	private Map<String, Object> otherKeyWord = new HashMap<String, Object>();
	
	
	
	public Map<String, Object> getMap() {
		map.put("total", total);
		map.put("rows", list);
		return map;
	}
	
	
	public Map<String, Object> getOtherKeyWord() {
		return otherKeyWord;
	}
	public void setOtherKeyWord(Map<String, Object> otherKeyWord) {
		this.otherKeyWord = otherKeyWord;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public T getEntity() {
		return entity;
	}
	public void setEntity(T entity) {
		this.entity = entity;
	}
	public Integer getStart() {
		if(page==null){
			page=1;
		}
		if(rows==null){
			rows=5;
		}
		return (page-1)*rows;
	}


	@Override
	public String toString() {
		return "Page [page=" + page + ", rows=" + rows + ", total=" + total
				+ ", list=" + list + ", entity=" + entity + ", start=" + start
				+ ", map=" + map + ", otherKeyWord=" + otherKeyWord + "]";
	}
	
	
	
	

}
