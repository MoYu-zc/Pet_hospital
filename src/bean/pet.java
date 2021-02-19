package bean;

import java.io.Serializable;

public class pet implements Serializable {
    private Integer id;
    private String  name;
    private String  type;
    private String  bath;
    private String  master;

    @Override
    public String toString() {
        return "pet{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", bath='" + bath + '\'' +
                ", master='" + master + '\'' +
                '}';
    }

    public pet() {
        super();
    }

    public pet(Integer id, String name, String type, String bath, String master) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.bath = bath;
        this.master = master;
    }

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBath() {
        return bath;
    }

    public void setBath(String bath) {
        this.bath = bath;
    }

    public String getMaster() {
        return master;
    }

    public void setMaster(String master) {
        this.master = master;
    }
}
