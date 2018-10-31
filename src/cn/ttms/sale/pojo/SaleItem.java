package cn.ttms.sale.pojo;

import cn.ttms.ticket.pojo.Ticket;

import java.util.List;

public class SaleItem {
    private String sid;
    private List<Ticket> ticketList;
    private Sale sale;

    public SaleItem() {
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public List<Ticket> getTicketList() {
        return ticketList;
    }

    public void setTicketList(List<Ticket> ticketList) {
        this.ticketList = ticketList;
    }

    public Sale getSale() {
        return sale;
    }

    public void setSale(Sale sale) {
        this.sale = sale;
    }

    @Override
    public String toString() {
        return "SaleItem{" +
                "sid='" + sid + '\'' +
                ", ticketList=" + ticketList +
                ", sale=" + sale +
                '}';
    }
}
