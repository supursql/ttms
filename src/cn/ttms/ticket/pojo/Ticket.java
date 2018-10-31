package cn.ttms.ticket.pojo;


import java.util.Date;

public class Ticket {
    private String tid;
    private String showName;
    private Date startTime;
    private Date endTime;
    private String name;
    private String price;
    private int row;
    private int col;
    private int status;
    private Date lockTime;

    public Ticket() {
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getShowName() {
        return showName;
    }

    public void setShowName(String showName) {
        this.showName = showName;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getCol() {
        return col;
    }

    public void setCol(int col) {
        this.col = col;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getLockTime() {
        return lockTime;
    }

    public void setLockTime(Date lockTime) {
        this.lockTime = lockTime;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "tid='" + tid + '\'' +
                ", showName='" + showName + '\'' +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", name='" + name + '\'' +
                ", price='" + price + '\'' +
                ", row=" + row +
                ", col=" + col +
                ", status=" + status +
                ", locktime=" + lockTime +
                '}';
    }
}
