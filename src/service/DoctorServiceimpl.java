package service;

import bean.doctor;
import dao.DoctorDao;
import dao.DoctorDaoimpl;

import java.util.List;

public class DoctorServiceimpl implements DoctorService{
    DoctorDao doctorDao= new DoctorDaoimpl();
    @Override
    public List<doctor> getDorList() {
        return doctorDao.getDorList();
    }

    @Override
    public boolean addDor(doctor doctor) {
        boolean b = doctorDao.addDor(doctor);
        return b;
    }

    @Override
    public List<doctor> getoneDor(String name) {
        List<doctor> doctor = doctorDao.getoneDor(name);
        return doctor;
    }

    @Override
    public List<doctor> getoneDor1(String bumen) {
        List<doctor> doctor = doctorDao.getoneDor1(bumen);
        return doctor;
    }
}
