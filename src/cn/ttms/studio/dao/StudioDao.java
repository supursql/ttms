package cn.ttms.studio.dao;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.studio.pojo.Studio;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class StudioDao {
    private QueryRunner qr = new TxQueryRunner();

    /**
     * 根据Sid查找Studioid和name
     * @param sid
     * @return
     */
    public Studio selectSid_NameBySid(String sid) {
        try {
            String sql = "select sid, name from studio where sid=?";

            return qr.query(sql, new BeanHandler<Studio>(Studio.class), sid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据Sid查找
     * @param sid
     * @return
     */
    public Studio selectStudioBySid(String sid) {
        try {
            String sql = "select * from studio where sid=?";

            return qr.query(sql, new BeanHandler<Studio>(Studio.class), sid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据名称查询演出厅
     * @param name
     * @return
     */
    public Studio findByStudioname(String name) {
        try {
            String sql = "select * from studio where name=?";
            return qr.query(sql, new BeanHandler<Studio>(Studio.class), name);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 修改演出厅状态
     * @param name
     * @param status
     */
    public void updateStatus(String name, int status) {
        try {
            String sql = "update studio set status=? where name=?";
            qr.update(sql, status, name);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 展示所有演出厅
     * @return
     */
    public List<Studio> showAll() {
        try {
            String sql = "select * from studio";
            return qr.query(sql, new BeanListHandler<Studio>(Studio.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     *
     * @param studioid
     * @return
     */
    public int selectRowByStudioId(String studioid) {
        try {
            String sql = "select row from studio where sid=?";
            return (int)qr.query(sql, new ScalarHandler(), studioid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     *
     * @param studioid
     * @return
     */
    public int selectColByStudioId(String studioid) {
        try {
            String sql = "select col from studio where sid=?";
            return (int)qr.query(sql, new ScalarHandler(), studioid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void addStudio(Studio studio) {
        try {
            String sql = "insert into studio values(?,?,?,?,?,?)";
            Object[] params = {studio.getSid(),studio.getName(),studio.getRow(),studio.getCol(),
                    studio.getIntroduction(),studio.getStatus()};
            qr.update(sql, params);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Studio selectStudioByName(String name) {
        try {
            String sql = "select * from studio where name=?";
            return qr.query(sql, new BeanHandler<Studio>(Studio.class), name);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
