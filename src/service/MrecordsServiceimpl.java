package service;

import bean.mrecords;
import dao.MrecordsDao;
import dao.MrecordsDaoimpl;

import java.util.List;

public class MrecordsServiceimpl implements MrecordsService {
    MrecordsDao mrecordsDao = new MrecordsDaoimpl();
    @Override
    public List<mrecords> getrecords(String name) {
        return mrecordsDao.getrecords(name);
    }

    @Override
    public boolean AddMrecords(mrecords mrecords) {
        boolean b = mrecordsDao.AddMrecords(mrecords);
        return b;
    }
}
