package cn.it.utils;

import java.util.HashMap;
import java.util.Map;

public class PageUtil<T> {
	
	private int currentRow;//起始行
	private int pageSize;
	
	
	
	public PageUtil(int currentPage, int pageSize) {
		this.currentRow = (currentPage-1)*pageSize;
		this.pageSize = pageSize;
	}
	
	public  Map<String,Object> getMap(T entity){
		
		 Map<String,Object> map=new HashMap<String,Object>();  
	        map.put("currentRow", this.currentRow);  
	        map.put("pageSize", this.pageSize);  
	        map.put("entity", entity);
	        return map;
	}
	
	
	public int getCurrentPage() {
		if(currentRow<=0){
			currentRow=1;
		}
		return currentRow;
	}
	public void setCurrentPage(int currentPage) {
		this.currentRow = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	

}
