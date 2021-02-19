package service;

import bean.pet;

import java.util.List;

public interface PetService {

    /**
     *  通过宠物姓名查询
     * @param name
     * @return
     */
    public List<pet> getListCusByN(String name);

    /**
     * 通过宠物主人姓名查询
     * @param master
     * @return
     */
    public List<pet> getListCusByM(String master);

    /**
     * 修改宠物信息
     * @param pet
     * @return
     */
    public boolean updatePet(pet pet);

    /**
     * 添加新宠物
     * @param pet
     * @return
     */
    public boolean AddPet(pet pet);
    /**
     * 通过名字和客户查宠物
     * @param name
     * @param master
     * @return
     */
    public pet getonepet(String name,String master);
}
