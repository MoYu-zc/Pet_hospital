package dao;


import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.JDBCUtils;
import java.lang.reflect.ParameterizedType;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class BaseDao<T> {

    private QueryRunner runner = new QueryRunner();
    private Class<T> type;

    public BaseDao() {
        ParameterizedType su = (ParameterizedType) this.getClass().getGenericSuperclass();
        //  System.out.println(su.getClass());
        type = (Class<T>) su.getActualTypeArguments()[0];
    }

    public T getBean(String sql, Object... params) {
        Connection connection = JDBCUtils.getConnection();
        T query = null;
        try {
            query = runner.query(connection, sql, new BeanHandler<>(type), params);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.resconn(connection);
        }
        return query;
    }
    public List<T> getBeanList(String sql, Object...params){
        Connection connection=JDBCUtils.getConnection();
        List<T> query=null;
        try {
            query=runner.query(connection,sql, new BeanListHandler<>(type),params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return query;
    }

    public int update(String sql, Object... params) {
        int count = 0;
        Connection connection = JDBCUtils.getConnection();
        try {
            count = runner.update(connection, sql, params);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.resconn(connection);
        }
        return count;
    }
}
