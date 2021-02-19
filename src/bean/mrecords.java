package bean;

import java.io.Serializable;

public class mrecords implements Serializable {

    private String  pname;
    private String  master;
    private String  type;
    private String  time;
    private String  note;

    @Override
    public String toString() {
        return "mrecords{" +
                "pname='" + pname + '\'' +
                ", master='" + master + '\'' +
                ", type='" + type + '\'' +
                ", time='" + time + '\'' +
                ", note='" + note + '\'' +
                '}';
    }

    public mrecords() {
        super();
    }

    public mrecords(String pname, String master, String type, String time, String note) {
        this.pname = pname;
        this.master = master;
        this.type = type;
        this.time = time;
        this.note = note;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getMaster() {
        return master;
    }

    public void setMaster(String master) {
        this.master = master;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
