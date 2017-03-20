package cn.it.entity.vo;

import java.util.List;

public class DayVO {
	private String dayName;
	private List<SectionVO> sectionList;

	public String getDayName() {
		return dayName;
	}

	public void setDayName(String dayName) {
		this.dayName = dayName;
	}

	public List<SectionVO> getSectionList() {
		return sectionList;
	}

	public void setSectionList(List<SectionVO> sectionList) {
		this.sectionList = sectionList;
	}

	@Override
	public String toString() {
		return "DayVO [dayName=" + dayName + ", sectionList=" + sectionList + "]";
	}

	
}
