package cn.ttms.play.dao;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.play.pojo.Play;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class PlayDao {
    private QueryRunner qr = new TxQueryRunner();

    /**
     * 展示所有剧目信息
     * @return
     */
    public List<Play> showAll() {
        try {
            String sql = "SELECT * FROM play order by sort";
            return qr.query(sql, new BeanListHandler<Play>(Play.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 展示当前上映剧目的前5条剧目
     * @return
     */
    public List<Play> showAllLimitOnCurrent() {
        try {
            String sql = "select * from play order by sort limit 0, 5";
            return qr.query(sql, new BeanListHandler<Play>(Play.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 展示未上映剧目的前5条剧目
     * @return
     */
    public List<Play> showAllLimitOnSoon() {
        try {
            String sql = "select * from play where status=0 order by sort limit 5;";
            return qr.query(sql, new BeanListHandler<Play>(Play.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 展示特定的剧目信息
     */
    public Play selectOne(String pid) {
        try {

            String sql = "select * from play where pid = ?";
            return qr.query(sql, new BeanHandler<Play>(Play.class), pid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     *
     * @return
     */
    public long selectCount() {
        try {
            String sql = "select count(*) from play";
            return (long) qr.query(sql, new ScalarHandler());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void addPlay(Play play) {
        try {
            String sql = "insert into play values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            qr.update(sql, play.getPid(), play.getShowName(), play.getPoster(), play.getScore(),
                    play.getDirector(), play.getStarring(), play.getPlot(), play.getCountry(),
                    play.getLanguage(), play.getDuration(), play.getIntroduction(), play.getPicture(),
                    play.getStatus(), play.getSort(), play.getDate());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void motifyPlay(Play play) {
        try {
            String sql = "update play set showName=?, poster=?, score=?, director=?," +
                    "starring=?, plot=?, country=?, language=?, duration=?," +
                    "introduction=?, picture=?, status=?, date=? where pid=?";
            qr.update(sql, play.getShowName(), play.getPoster(), play.getScore(),
                    play.getDirector(), play.getStarring(), play.getPlot(), play.getCountry(),
                    play.getLanguage(), play.getDuration(), play.getIntroduction(), play.getPicture(),
                    play.getStatus(), play.getDate(), play.getPid());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void dropOffPlay(String pid) {
        try {
            String sql = "update play set status=2 where pid = ?";
            qr.update(sql, pid);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public Play selectPlayByshowName(String showName) {
        try {
            String sql = "select * from play where showName=?";
            return qr.query(sql, new BeanHandler<Play>(Play.class), showName);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
