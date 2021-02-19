package test;

import bean.customer;
import bean.pet;
import dao.PetDao;
import dao.PetDaoimpl;
import org.junit.Test;
import service.CustomerService;
import service.CustomerServiceimpl;
import service.PetService;
import service.PetServiceimpl;

import java.util.List;

public class PetTest {
    PetDao petDao = new PetDaoimpl();
    PetService petService = new PetServiceimpl();
    CustomerService customerService = new CustomerServiceimpl();
    @Test
    public void  Test(){
        List<pet> listCusByN = petDao.getListCusByM("11");
        for (pet pet:listCusByN
             ) {
            System.out.println(pet);
        }
    }

    @Test
    public void Test1(){
        List<pet> listCusByN = petService.getListCusByM("1");
        for (pet pet:listCusByN
        ) {
            System.out.println(pet);
        }
    }
    @Test
    public void Test2(){
        pet pet = petService.getonepet("2", "1");
        System.out.println(pet.getId());

    }

    @Test
    public void Test3(){
        boolean b = petService.updatePet(new pet(1, "1", "2", "1", "1"));
        System.out.println(b);

    }
}
