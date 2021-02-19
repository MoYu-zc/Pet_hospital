package dao;

import bean.mrecords;

import java.util.List;

public interface MrecordsDao {
    /**
     *  通过宠物姓名获得病历
     * @param name
     * @return
     */
    public List<mrecords> getrecords(String name);

    /**
     *  添加新病历
     * @param mrecords
     * @return
     */
    public boolean AddMrecords(mrecords mrecords);


}
