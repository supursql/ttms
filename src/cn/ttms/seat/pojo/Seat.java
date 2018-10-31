package cn.ttms.seat.pojo;

import cn.ttms.studio.pojo.Studio;

public class Seat {
    private String sid;
    private int row;
    private int col;
    private int status;
    private Studio studio;

    public Seat() {
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
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

    public Studio getStudio() {
        return studio;
    }

    public void setStudio(Studio studio) {
        this.studio = studio;
    }

    @Override
    public String toString() {
        return "Seat{" +
                "sid='" + sid + '\'' +
                ", row=" + row +
                ", col=" + col +
                ", status=" + status +
                ", studio=" + studio +
                '}';
    }
}
