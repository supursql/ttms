package cn.ttms.user.dao;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.user.pojo.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;

public class UserDao {
    private QueryRunner qr = new TxQueryRunner();

    public User findByUsername(String name) {
        try {
            String sql = "select * from user where name=?";
            User user = qr.query(sql, new BeanHandler<User>(User.class), name);
            return user;
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User findByEmail(String email) {
        try {
            String sql = "select * from user where email=?";
            return qr.query(sql, new BeanHandler<User>(User.class), email);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void add(User user) {
        try {
            String sql = "insert into user(uid, name, password, phoneNumber, address, email, code, state) values(?,?,?,?,?,?,?,?)";
            Object[] params = {user.getUid(), user.getName(),
                    user.getPassword(), user.getPhoneNumber(), user.getAddress(), user.getEmail(), user.getCode(),
                    user.getState()};
            qr.update(sql, params);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User findByCode(String code) {
        try {
            String sql = "select * from user where code=?";
            return qr.query(sql, new BeanHandler<User>(User.class), code);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateState(String uid, Boolean state) {
        try {
            String sql = "update user set state=? where uid=?";
            qr.update(sql, state, uid);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public String selectUidByName(String name) {
        try {
            String sql = "select uid from user where name = ?";
            return (String) qr.query(sql, new ScalarHandler(), name);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int selectTypeByUid(String uid) {
        try {
            String sql = "select type from user where uid=?";
            return (int)qr.query(sql, new ScalarHandler(), uid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
