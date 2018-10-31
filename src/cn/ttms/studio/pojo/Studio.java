package cn.ttms.studio.pojo;

public class Studio {

    private String sid;
    private String name;
    private int row;
    private int col;
    private String introduction;
    private int status;

    public Studio() {
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Studio{" +
                "sid='" + sid + '\'' +
                ", name='" + name + '\'' +
                ", row=" + row +
                ", col=" + col +
                ", introduction='" + introduction + '\'' +
                ", status=" + status +
                '}';
    }
}
