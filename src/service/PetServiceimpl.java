package service;

import bean.pet;
import dao.PetDao;
import dao.PetDaoimpl;

import java.util.List;

public class PetServiceimpl implements  PetService {
    PetDao petDao = new PetDaoimpl();
    @Override
    public List<pet> getListCusByN(String name) {
        return  petDao.getListCusByN(name);
    }

    @Override
    public List<pet> getListCusByM(String master) {
        return petDao.getListCusByM(master);
    }

    @Override
    public boolean updatePet(pet pet) {
        boolean b = petDao.updatePet(pet);
        return b;
    }

    @Override
    public boolean AddPet(pet pet) {
        boolean b = petDao.AddPet(pet);
        return b;
    }

    @Override
    public pet getonepet(String name, String master) {
        pet pet = petDao.getonepet(name, master);
        return pet;
    }
}
