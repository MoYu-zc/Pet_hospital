package dao;

import bean.mrecords;

import java.util.List;

public class MrecordsDaoimpl extends BaseDao<mrecords> implements  MrecordsDao {
    @Override
    public List<mrecords> getrecords(String name) {
        String sql="select * from mrecords where pname=?";
        List<mrecords> mrecords = getBeanList(sql, name);
        return mrecords;
    }

    @Override
    public boolean AddMrecords(mrecords mrecords) {
        String sql="insert into mrecords(pname,master,type,time,note) values(?,?,?,?,?)";
        int update = update(sql, mrecords.getPname(), mrecords.getMaster(), mrecords.getType(), mrecords.getTime(), mrecords.getNote());
        return update>0;
    }
}
