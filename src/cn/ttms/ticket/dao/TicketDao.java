package cn.ttms.ticket.dao;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.ticket.pojo.Ticket;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;


public class TicketDao {
    private QueryRunner qr = new TxQueryRunner();

    /**
     * 根据票id查询特定票
     * @param tid
     * @return
     */
    public Ticket selectTicketById(String tid) {
        try {
            String sql = "select ticket.tid, showName, startTime, endTime, studio.name, price, seat.row, seat.col, ticket.status\n" +
                    "from ticket, play, schedule, studio, seat\n" +
                    "where ticket.tid = ? and schedule.pid=play.pid and schedule.stid=studio.sid and ticket.seatid = seat.sid and ticket.scheduleid = schedule.sid";


            return qr.query(sql, new BeanHandler<Ticket>(Ticket.class), tid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据演出计划id查询所有的票信息
     * @param sid
     * @return
     */
    public List<Ticket> showAllByScheduleId(String sid) {
        try {
            String sql = "select ticket.tid, showName, startTime, endTime, studio.name, price, seat.row, seat.col, ticket.status\n" +
                    "from ticket, play, schedule, studio, seat\n" +
                    "where schedule.sid=? and schedule.pid=play.pid and schedule.stid=studio.sid and ticket.seatid = seat.sid and ticket.scheduleid = schedule.sid\n" +
                    "order by seat.row, seat.col";

            return qr.query(sql, new BeanListHandler<Ticket>(Ticket.class), sid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据演出计划添加对应的票
     * @param ticket
     * @param seatid
     * @param scheduleid
     */
    public void addTicket(Ticket ticket, String seatid, String scheduleid) {
        try {
            String sql = "insert into ticket(tid, seatid, status, lockTime, scheduleid) values(?,?,?,?,?)";
            qr.update(sql, ticket.getTid(), seatid, ticket.getStatus(), ticket.getLockTime(), scheduleid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据演出计划id以及该演出计划对应票的座位指定对应的状态
     * @param
     * @param status
     * @param scheduleid
     */
    public void updateStatus(String seatid, String scheduleid, String saleItemid, int status) {
        try {
            String sql = "update ticket set status=?, saleItemid=?, lockTime=now() where scheduleid=? and seatid=?";
            qr.update(sql, status, saleItemid,  scheduleid, seatid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据座位id和演出计划id查询票
     * @return
     */
    public Ticket selectTicketBySeatidAndScheduleid(String seatid, String scheduleid) {
        try {
            String sql = "select ticket.tid, showName, startTime, endTime, studio.name, price, seat.row, seat.col, ticket.status\n" +
                    "from ticket, play, schedule, studio, seat\n" +
                    "where seatid=? and scheduleid=? and schedule.pid=play.pid and schedule.stid=studio.sid and ticket.seatid = seat.sid and ticket.scheduleid = schedule.sid";
            return qr.query(sql,  new BeanHandler<Ticket>(Ticket.class), seatid, scheduleid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 计算时间差
     * @param timestamp
     * @param tid
     * @return
     */
    public long timeSub(java.sql.Timestamp timestamp, String tid) {
        try {

            String sql = "select timestampdiff(SECOND, lockTime, ?) from ticket where tid=?";

            return (long)qr.query(sql, new ScalarHandler(), timestamp, tid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 展示所有状态为2的票
     * @return
     */
    public List<Ticket> showAllTicketOnStatusTwo() {
        try{
            String sql = "select tid from ticket where status=2";
            return qr.query(sql, new BeanListHandler<Ticket>(Ticket.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public void updateStatus(int status, String tid) {
        try {
            String sql = "update ticket set status=? where tid=?";
            qr.update(sql, status, tid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Ticket> showAllTicketBySaleItemid(String saleItemid) {
        try {

            String sql = "select ticket.tid, showName, startTime, endTime, studio.name, price, seat.row, seat.col, ticket.status\n" +
                    "from ticket, play, schedule, studio, seat\n" +
                    "where saleItemid=? and schedule.pid=play.pid and schedule.stid=studio.sid and ticket.seatid = seat.sid and ticket.scheduleid = schedule.sid";
            return qr.query(sql, new BeanListHandler<Ticket>(Ticket.class), saleItemid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateTicketLockTime(java.sql.Timestamp timestamp, String tid) {
        try {
            String sql = "update ticket set lockTime=? where tid=?";
            qr.update(sql, timestamp, tid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateLockTimeAfterPay(String saleItemid) {
        try {
            String sql = "update ticket, schedule set ticket.lockTime=schedule.startTime \n" +
                    "where saleItemid=? and ticket.scheduleid=schedule.sid";
            qr.update(sql, saleItemid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
