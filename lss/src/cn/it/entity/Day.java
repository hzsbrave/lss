package cn.it.entity;

public class Day {
    private Integer dayId;

    private String dayName;

    public Integer getDayId() {
        return dayId;
    }

    public void setDayId(Integer dayId) {
        this.dayId = dayId;
    }

    public String getDayName() {
        return dayName;
    }

    public void setDayName(String dayName) {
        this.dayName = dayName == null ? null : dayName.trim();
    }
}