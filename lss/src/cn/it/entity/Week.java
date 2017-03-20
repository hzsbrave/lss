package cn.it.entity;

public class Week {
    private Integer weekId;

    private String weekName;

    public Integer getWeekId() {
        return weekId;
    }

    public void setWeekId(Integer weekId) {
        this.weekId = weekId;
    }

    public String getWeekName() {
        return weekName;
    }

    public void setWeekName(String weekName) {
        this.weekName = weekName == null ? null : weekName.trim();
    }
}