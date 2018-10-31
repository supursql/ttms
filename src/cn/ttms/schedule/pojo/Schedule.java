package cn.ttms.schedule.pojo;

import cn.ttms.studio.pojo.Studio;
import cn.ttms.ticket.pojo.Ticket;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class Schedule {
    private String sid;
    private Date startTime;
    private Date endTime;
    private int status;
    private double price;
    private Studio studio;
    private int[][] seatArray;

    public Schedule() {
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Studio getStudio() {
        return studio;
    }

    public void setStudio(Studio studio) {
        this.studio = studio;
    }

    public int[][] getSeatArray() {
        return seatArray;
    }

    public void setSeatArray(int[][] seatArray) {
        this.seatArray = seatArray;
    }

    @Override
    public String toString() {
        return "Schedule{" +
                "sid='" + sid + '\'' +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", status=" + status +
                ", price=" + price +
                ", studio=" + studio +
                ", seatArray=" + Arrays.toString(seatArray) +
                '}';
    }
}
