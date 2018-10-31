package cn.ttms.sale.dao;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.sale.pojo.Sale;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class SaleDao {
    private QueryRunner qr = new TxQueryRunner();

    /**
     *添加订单
     * @param sid
     */
    public void addSaleItem(String sid, String saleid) {
        try {
            String sql = "insert into saleItem(sid, saleid) values(?,?)";
            qr.update(sql, sid, saleid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 添加销售
     * @param sale
     */
    public void addSale(Sale sale) {
        try {
            String sql = "insert into sale(sid, uid, saleStatus) values(?,?,?)";
            qr.update(sql, sale.getSid(), sale.getUser().getUid(), sale.getSaleStatus());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 根据订单id查询销售详细id
     * @param sid
     * @return
     */
    public String selectSaleBySaleItemid(String sid) {
        try {
            String sql = "select saleid from saleItem where sid = ?";
            return (String) qr.query(sql, new ScalarHandler(), sid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 修改销售详细
     * @param sale
     */
    public void updateSale(Sale sale) {
        try {
            String sql = "update sale set saleTime=?, salePayment=?, saleStatus=? where sid=?";
            qr.update(sql, sale.getSaleTime(), sale.getSalePayment(), sale.getSaleStatus(), sale.getSid());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Sale> showAllSaleByUid(String uid) {
        try {
            String sql = "select * from sale where uid=?";

            return qr.query(sql, new BeanListHandler<Sale>(Sale.class), uid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public String selectSaleItemidBySaleid(String saleid) {
        try {
            String sql = "select sid from saleItem where saleid=?";
            return (String)qr.query(sql, new ScalarHandler(), saleid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
