package cn.it.entity;

public class Params {
	public int pagedIndex;
	public int pagedSize;
	public int total;
	public int getPagedIndex() {
		return pagedIndex;
	}
	public void setPagedIndex(int pagedIndex) {
		this.pagedIndex = pagedIndex;
	}
	public int getPagedSize() {
		return pagedSize;
	}
	public void setPagedSize(int pagedSize) {
		this.pagedSize = pagedSize;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "Params [pagedIndex=" + pagedIndex + ", pagedSize=" + pagedSize + ", total=" + total + "]";
	}
}
