package cn.ttms.play.pojo;

import cn.ttms.schedule.pojo.Schedule;

import java.util.Date;
import java.util.List;

public class Play {
    private String pid;  //id
    private String showName; //电影名字
    private String poster;  //海报
    private float score;  //评分
    private String director;  //导演
    private String starring;  //主演
    private String plot;  //类型
    private String country;  //国家
    private String language;  //语言
    private int duration;  //时长
    private String introduction;  //介绍
    private String picture;  //照片
    private int status;  //状态
    private int sort; //
    private List<Schedule> scheduleList;
    private Date date;

    public Play() {
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getShowName() {
        return showName;
    }

    public void setShowName(String showName) {
        this.showName = showName;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getStarring() {
        return starring;
    }

    public void setStarring(String starring) {
        this.starring = starring;
    }

    public String getPlot() {
        return plot;
    }

    public void setPlot(String plot) {
        this.plot = plot;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public List<Schedule> getScheduleList() {
        return scheduleList;
    }

    public void setScheduleList(List<Schedule> scheduleList) {
        this.scheduleList = scheduleList;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Play{" +
                "pid='" + pid + '\'' +
                ", showName='" + showName + '\'' +
                ", poster='" + poster + '\'' +
                ", score=" + score +
                ", director='" + director + '\'' +
                ", starring='" + starring + '\'' +
                ", plot='" + plot + '\'' +
                ", country='" + country + '\'' +
                ", language='" + language + '\'' +
                ", duration=" + duration +
                ", introduction='" + introduction + '\'' +
                ", picture='" + picture + '\'' +
                ", status=" + status +
                ", sort=" + sort +
                ", scheduleList=" + scheduleList +
                ", date=" + date +
                '}';
    }
}
