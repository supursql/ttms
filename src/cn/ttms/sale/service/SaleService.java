package cn.ttms.sale.service;

import cn.itcast.commons.CommonUtils;
import cn.ttms.sale.dao.SaleDao;
import cn.ttms.sale.pojo.Sale;
import cn.ttms.sale.pojo.SaleItem;
import cn.ttms.ticket.pojo.Ticket;
import cn.ttms.ticket.service.TicketService;
import cn.ttms.user.pojo.User;
import cn.ttms.user.service.UserService;

import java.util.ArrayList;
import java.util.List;

public class SaleService {
    private SaleDao saleDao = new SaleDao();
    private TicketService ticketService = new TicketService();
    private UserService userService = new UserService();

    /**
     * 添加订单
     * @param seatList
     * @param scheduleid
     */
    public SaleItem addSaleItem(String[] seatList, String scheduleid, User user) {

        SaleItem saleItem = new SaleItem();

        saleItem.setSid(CommonUtils.uuid());

        Sale sale = new Sale();
        sale.setSid(CommonUtils.uuid());
        sale.setUser(user);
        sale.setSaleStatus(0);

        saleDao.addSale(sale);

        saleDao.addSaleItem(saleItem.getSid(), sale.getSid());

        List<Ticket> ticketList = ticketService.updateStatusOnLock(seatList, scheduleid, saleItem.getSid());

        saleItem.setTicketList(ticketList);

        saleItem.setSale(sale);

        return saleItem;
    }

    /**
     * 补充订单的信息
     * @param sid
     * @param totalPrice
     */
    public void updateSaleItem(String sid, String totalPrice) {
        String saleid = saleDao.selectSaleBySaleItemid(sid);

        ticketService.updateLockTimeAfterPay(sid);

        Sale sale = new Sale();
        sale.setSaleTime(new java.sql.Timestamp(System.currentTimeMillis()));
        sale.setSalePayment(Double.parseDouble(totalPrice));
        sale.setSaleStatus(1);
        sale.setSid(saleid);

        saleDao.updateSale(sale);
    }

    public List<SaleItem> showAllSaleItem(String name) {
        String uid = userService.selectUidByName(name);

        List<SaleItem> saleItemList = new ArrayList<>();

        List<Sale> saleList = saleDao.showAllSaleByUid(uid);
        for (Sale sale : saleList) {
            SaleItem saleItem = new SaleItem();

            saleItem.setSale(sale);

            String sid = saleDao.selectSaleItemidBySaleid(sale.getSid());

            List<Ticket> ticketList = ticketService.showAllTicketBySaleItemid(sid);

            saleItem.setSid(sid);

            saleItem.setTicketList(ticketList);

            saleItemList.add(saleItem);

        }

        return saleItemList;
    }
}
