package test;

import bean.mrecords;
import dao.MrecordsDao;
import dao.MrecordsDaoimpl;
import org.junit.Test;

import java.util.List;

public class MrecordsTest {

    @Test
    public void Test(){
        MrecordsDao mrecordsDao = new MrecordsDaoimpl();
        List<mrecords> getrecords = mrecordsDao.getrecords("1");
        for (mrecords mre:getrecords
             ) {
            System.out.println(mre);
        }
    }
}
