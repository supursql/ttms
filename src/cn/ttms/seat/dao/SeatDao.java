package cn.ttms.seat.dao;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.seat.pojo.Seat;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class SeatDao {
    private QueryRunner qr = new TxQueryRunner();

    /**
     * 添加座位
     * @param seat
     */
    public void addSeat(Seat seat, String studioid) {
        try {
            String sql = "insert into seat(sid, studioid, row, col, status) values(?,?,?,?,?)";
            Object[] params = {seat.getSid(), studioid, seat.getRow(),
            seat.getCol(), seat.getStatus()};
            qr.update(sql, params);
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     *查询所有状态为1的座位
     */
    public List<Seat> showAllStatusInOne(String studioid) {
        try {
            String sql = "select sid, row, col from seat where studioid=? and status=1 order by row, col";
            return qr.query(sql, new BeanListHandler<Seat>(Seat.class), studioid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据行和列查询座位的id
     * @param row
     * @param col
     * @return
     */
    public String selectSeatidOnRowAndCol(int row, int col) {
        try {
            String sql = "select sid from seat where row=? and col=?";
            return (String) qr.query(sql, new ScalarHandler(), row, col);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void modifySeat(int row, int col, int status) {
        try {
            String sql = "update seat set status=? where row=? and col=?";
            qr.update(sql, status, row, col);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
