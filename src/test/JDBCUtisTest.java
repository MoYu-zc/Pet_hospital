package test;

import org.junit.Test;

import utils.JDBCUtils;

import java.sql.Connection;

public class JDBCUtisTest {
@Test
    public void rescon(){
        Connection connection = JDBCUtils.getConnection();
        System.out.println(connection);
        JDBCUtils.resconn(connection);
    }
}
