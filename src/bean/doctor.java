package bean;

import java.io.Serializable;

public class doctor implements Serializable {
    private Integer id;
    private String  name;
    private String  sex;
    private String  bumen;
    private String  time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBumen() {
        return bumen;
    }

    public void setBumen(String bumen) {
        this.bumen = bumen;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public doctor(Integer id, String name, String sex, String bumen, String time) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.bumen = bumen;
        this.time = time;
    }

    public doctor() {
        super();
    }

    @Override
    public String toString() {
        return "doctor{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", bumen='" + bumen + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
