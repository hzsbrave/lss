package cn.it.entity.vo;

import java.util.List;

public class WeekVO{
	private String weekName;
	private int weekId;
	private List<DayVO> dayList;

	public int getWeekId() {
		return weekId;
	}

	public void setWeekId(int weekId) {
		this.weekId = weekId;
	}

	public String getWeekName() {
		return weekName;
	}

	public void setWeekName(String weekName) {
		this.weekName = weekName;
	}

	public List<DayVO> getDayList() {
		return dayList;
	}

	public void setDayList(List<DayVO> dayList) {
		this.dayList = dayList;
	}

	@Override
	public String toString() {
		return "WeekVO [weekName=" + weekName + ", weekId=" + weekId + ", dayList=" + dayList + "]";
	}

}
