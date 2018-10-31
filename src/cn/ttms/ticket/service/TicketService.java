package cn.ttms.ticket.service;

import cn.itcast.commons.CommonUtils;
import cn.ttms.schedule.service.ScheduleService;
import cn.ttms.seat.pojo.Seat;
import cn.ttms.seat.service.SeatService;
import cn.ttms.ticket.dao.TicketDao;
import cn.ttms.ticket.pojo.Ticket;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TicketService {
    private TicketDao ticketDao = new TicketDao();
    private SeatService seatService = new SeatService();
    private ScheduleService scheduleService;

    /**
     *根据票id查询特定的票
     * @param tid
     * @return
     */
    public Ticket selectTicketById(String tid) {
        return ticketDao.selectTicketById(tid);
    }

    /**
     * 根据演出计划查询所有票信息
     * @param sid
     * @return
     */
    public List<Ticket> showAllByScheduleId(String sid) {
        return ticketDao.showAllByScheduleId(sid);
    }

    /**
     * 根据演出计划添加相关的票
     * @param scheduleid
     */
    public void addTicket(String scheduleid) {
        scheduleService = new ScheduleService();

        String studioid = scheduleService.selectStudioIdOnSid(scheduleid);
        List<Seat> seatList = seatService.showAllStatusInOne(studioid);

        for (Seat seat : seatList) {
            Ticket ticket = new Ticket();
            ticket.setTid(CommonUtils.uuid());

            ticket.setStatus(1);

            ticket.setLockTime(new Date());

            String seatid = seat.getSid();

            ticketDao.addTicket(ticket, seatid, scheduleid);
        }
    }

    /**
     * 根据行和列以及对应的演出计划id来修改飘得状态
     * @param seatList
     * @param scheduleid
     */
    public List<Ticket> updateStatusOnLock(String[] seatList, String scheduleid, String saleItemid) {

        List<Ticket> ticketList = new ArrayList<>();

        for (String seat : seatList) {
            int row = Integer.parseInt(seat.split(",")[0]);
            int col = Integer.parseInt(seat.split(",")[1]);

            String seatid = seatService.selectSeatidOnRowAndCol(row, col);

            ticketDao.updateStatus(seatid, scheduleid, saleItemid, 2);

            Ticket ticket = ticketDao.selectTicketBySeatidAndScheduleid(seatid, scheduleid);

            ticketList.add(ticket);
        }

        return ticketList;
    }

    /**
     * 判断是否到达解票的状态
     * @param tid
     * @return
     */
    public boolean canUnlockTicket(String tid) {
        long timeOut = 10 * 60;

        java.sql.Timestamp timestamp = new java.sql.Timestamp(System.currentTimeMillis());

        long timeSub = ticketDao.timeSub(timestamp, tid);

        if (timeSub > timeOut) {
            return true;
        }

        return false;
    }

    public void updateTicketStatus() {
        List<Ticket> ticketList = ticketDao.showAllTicketOnStatusTwo();

        for (Ticket ticket : ticketList) {
            if (this.canUnlockTicket(ticket.getTid())) {
                ticketDao.updateStatus(1, ticket.getTid());
            }
        }
    }

    public List<Ticket> showAllTicketBySaleItemid(String saleItemid) {
        return ticketDao.showAllTicketBySaleItemid(saleItemid);
    }


    public void updateTicketLockTime(java.sql.Timestamp timestamp, String tid) {
        ticketDao.updateTicketLockTime(timestamp, tid);
    }

    public void updateLockTimeAfterPay(String saleItemid) {
        ticketDao.updateLockTimeAfterPay(saleItemid);
    }
}
