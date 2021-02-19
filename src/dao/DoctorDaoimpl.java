package dao;

import bean.doctor;

import java.util.List;

public class DoctorDaoimpl extends BaseDao<doctor> implements DoctorDao {
    @Override
    public List<doctor> getDorList() {
        String sql="select id id,name name,sex sex,bumen bumen,time time from doctor";
        return getBeanList(sql);
    }

    @Override
    public boolean addDor(doctor doctor) {
        String sql="insert into doctor(id,name,sex,bumen,time) values(?,?,?,?,?)";
        int update = update(sql, doctor.getId(), doctor.getName(), doctor.getSex(), doctor.getBumen(), doctor.getTime());
        return update>0;
    }

    @Override
    public List<doctor> getoneDor(String name) {
        String sql="select id id,name name,sex sex,bumen bumen,time time from doctor where name=?";
        List<doctor> doctor = getBeanList(sql,name);
        return doctor;
    }

    @Override
    public List<doctor> getoneDor1(String bumen) {
        String sql="select id id,name name,sex sex,bumen bumen,time time from doctor where bumen=?";
        List<doctor> doctor = getBeanList(sql,bumen);
        return doctor;
    }


}
