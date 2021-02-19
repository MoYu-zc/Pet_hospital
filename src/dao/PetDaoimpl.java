package dao;

import bean.pet;

import java.util.List;

public class PetDaoimpl extends BaseDao<pet> implements PetDao {
    @Override
    public List<pet> getListCusByN(String name) {
        String sql="select id id,name name,type type,bath bath,master master from pet where name=?";
        List<pet> pets = getBeanList(sql, name);
        return pets;
    }

    @Override
    public List<pet> getListCusByM(String master) {
        String sql="select id id,name name,type type,bath bath,master master from pet where master=?";
        List<pet> pets = getBeanList(sql, master);
        return pets;
    }

    @Override
    public boolean updatePet(pet pet) {
        String sql="update pet set id=?,type=?,bath=?,master=? where name=?";
        int update = update(sql,pet.getId(), pet.getType(), pet.getBath(), pet.getMaster(), pet.getName());
        return update>0;
    }

    @Override
    public boolean AddPet(pet pet) {
        String sql="insert into pet(id,name,type,bath,master) values(?,?,?,?,?)";
        int update = update(sql, pet.getId(), pet.getName(), pet.getType(), pet.getBath(), pet.getMaster());
        return update>0;
    }

    @Override
    public pet getonepet(String name, String master) {
        String sql="select id id,name name,type type,bath bath,master master from pet where name=? and master=?";
        pet pet = getBean(sql, name, master);
        return pet;

    }
}
