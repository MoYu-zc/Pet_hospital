package test;

import bean.doctor;
import dao.DoctorDao;
import dao.DoctorDaoimpl;
import org.junit.Test;
import service.DoctorService;
import service.DoctorServiceimpl;

import java.util.List;

public class DoctorTest {

    @Test
    public void Test(){
        DoctorDao doctorDao = new DoctorDaoimpl();
        List<doctor> dorList = doctorDao.getDorList();
        for ( doctor list: dorList) {
            System.out.println(list);
        }
    }

    @Test
    public void Test1(){
        DoctorService doctorService = new DoctorServiceimpl();
        List<doctor> dorList = doctorService.getDorList();

        for ( doctor list: dorList) {
            System.out.println(list);
        }
    }
}
