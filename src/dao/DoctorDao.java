package dao;

import bean.doctor;

import java.util.List;

public interface DoctorDao {
    /**
     * 获得全部的兽医信息
     * @return
     */
    public List<doctor> getDorList();

    /**
     * 添加新兽医
     * @param doctor
     * @return
     */
    public boolean addDor(doctor doctor);
    /**
     * 根据名字搜部门
     * @param name
     * @return
     */
    public List<doctor> getoneDor(String name);
    /**
     * 根据部门搜部门
     * @param bumen
     * @return
     */
    public List<doctor> getoneDor1(String bumen);

}
