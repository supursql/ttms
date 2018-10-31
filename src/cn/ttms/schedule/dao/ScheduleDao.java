package cn.ttms.schedule.dao;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.schedule.pojo.Schedule;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class ScheduleDao {
    private QueryRunner qr = new TxQueryRunner();

    /**
     * 根据pid查询演出计划
     * @param pid
     * @return
     */
    public List<Schedule> selectOnPid(String pid) {
        try {
            String sql = "select sid, startTime, endTime, status, price from schedule where pid=? and startTime > now()";
            return qr.query(sql, new BeanListHandler<Schedule>(Schedule.class), pid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Schedule> selectOnStudioId(String sid) {
        try {
            String sql = "select sid, startTime, endTime, status, price from schedule where stid=? and startTime > now()";
            return qr.query(sql, new BeanListHandler<Schedule>(Schedule.class), sid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据sid查询studioid
     * @param sid
     * @return
     */
    public String selectStudioIdOnSid(String sid) {
        try{
            String sql = "select stid from schedule where sid=?";
            return (String) qr.query(sql,new ScalarHandler(), sid);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据演出计划id查询演出计划
     * @param sid
     * @return
     */
    public Schedule selectScheduleById(String sid) {
        try {
            String sql = "select sid, startTime, endTime, status, price from schedule where sid=?";
            return qr.query(sql, new BeanHandler<Schedule>(Schedule.class), sid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public void addSchedule(Schedule schedule, String pid, String studioid) {
        try {
            String sql = "insert into schedule values(?,?,?,?,?,?,?)";
            qr.update(sql, schedule.getSid(), schedule.getStartTime(), schedule.getEndTime(),
                    schedule.getStatus(), schedule.getPrice(),
                    pid, studioid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
