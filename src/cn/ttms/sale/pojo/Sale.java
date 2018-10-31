package cn.ttms.sale.pojo;

import cn.ttms.user.pojo.User;

import java.util.Date;

public class Sale {
    private String sid;
    private User user;
    private Date saleTime;
    private double salePayment;
    private double saleCharge;
    private int saleStatus;

    public Sale() {
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getSaleTime() {
        return saleTime;
    }

    public void setSaleTime(Date saleTime) {
        this.saleTime = saleTime;
    }

    public double getSalePayment() {
        return salePayment;
    }

    public void setSalePayment(double salePayment) {
        this.salePayment = salePayment;
    }

    public double getSaleCharge() {
        return saleCharge;
    }

    public void setSaleCharge(double saleCharge) {
        this.saleCharge = saleCharge;
    }

    public int getSaleStatus() {
        return saleStatus;
    }

    public void setSaleStatus(int saleStatus) {
        this.saleStatus = saleStatus;
    }

    @Override
    public String toString() {
        return "Sale{" +
                "sid='" + sid + '\'' +
                ", user=" + user +
                ", saleTime=" + saleTime +
                ", salePayment=" + salePayment +
                ", saleCharge=" + saleCharge +
                ", saleStatus=" + saleStatus +
                '}';
    }
}
