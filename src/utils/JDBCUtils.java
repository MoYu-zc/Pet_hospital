package utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class JDBCUtils {
  private static DataSource ds = new ComboPooledDataSource("cw");
  public  static Connection getConnection(){
    Connection connection=null;
    try {
      connection = ds.getConnection();
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return  connection;
  }

  public static void resconn(Connection connection){

    try {
      if (connection!=null) {
        connection.close();
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }

  }
  }

