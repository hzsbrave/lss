package cn.it.entity;

/**
 * Created by 10794 on 2017/3/31.
 */
public class ClassesParam extends Params {
    private Integer academyId;
    private String key;

    public Integer getAcademyId() {
        return academyId;
    }

    public void setAcademyId(Integer academyId) {
        this.academyId = academyId;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    @Override
    public String toString() {
        return "ClassesParam{" +
                "academyId=" + academyId +
                ", key='" + key + '\'' +
                '}';
    }
}
