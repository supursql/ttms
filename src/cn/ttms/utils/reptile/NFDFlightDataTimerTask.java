package cn.ttms.utils.reptile;

import cn.itcast.jdbc.TxQueryRunner;
import cn.ttms.play.pojo.Play;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.sql.Date;
import java.sql.SQLException;
import java.util.TimerTask;
import java.text.SimpleDateFormat;

public class NFDFlightDataTimerTask extends TimerTask {

    private static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private QueryRunner qr = new TxQueryRunner();

    @Override
    public void run() {

        updateAllPlay();

        try {

            Document document = Jsoup.connect("https://dianying.taobao.com/showList.htm?spm=a1z21.3046609.w2.3.32c0112aVxBqAB&n_s=new").timeout(8000)
                    .userAgent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
                    .get();

            Elements elements = document.getElementsByClass("tab-movie-list").select(".movie-card-wrap");

            int i = 1;
            int current = 1;

            for (Element element : elements) {

                //url
                String URL = element.select("a").attr("abs:href");

                if (current++ > 30 && URL.contains("current")) continue;

                //post
                String poster = element.select("img").attr("abs:src");

                //showname
                String showName = element.select(".movie-card-name").select("span").get(0).text();
                //score
                String score = element.select(".movie-card-name").select("span").get(1).text();

                //director
                String director = element.select(".movie-card-list").select("span").get(0).text();
                director = director.substring(director.indexOf("：") + 1, director.length());
                //starring
                String starring = element.select(".movie-card-list").select("span").get(1).text();
                starring = starring.substring(starring.indexOf("：") + 1, starring.length());
                //polt
                String plot = element.select(".movie-card-list").select("span").get(2).text();
                plot = plot.substring(plot.indexOf("：") + 1, plot.length());
                //country
                String country = element.select(".movie-card-list").select("span").get(3).text();
                country = country.substring(country.indexOf("：") + 1, country.length());
                //language
                String language = element.select(".movie-card-list").select("span").get(4).text();
                language = language.substring(language.indexOf("：") + 1, language.length());
                //duration
                String duration = element.select(".movie-card-list").select("span").get(5).text();
                duration = duration.substring(duration.indexOf("：") + 1, duration.length());
                Document document1 = Jsoup.connect(URL).timeout(8000)
                        .userAgent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
                        .get();

                Elements elements1 = document1.select(".center-wrap").select(".cont-info").select("li");
                int j = 0;
                for (Element element1 : elements1) {
                    j++;
                }

                //introduction
                String introduction = elements1.get(j - 1).text();
                //pricture
                String picture = document1.select(".float-layer-hook").select("img").attr("abs:src");

                String dateString = document1.select(".cont-time").text();
                dateString = dateString.substring(dateString.indexOf("：") + 1, dateString.length());
                SimpleDateFormat format = new SimpleDateFormat("yyyy-HH-dd");
                java.util.Date date1 = format.parse(dateString);
                //date
                Date date = new Date(date1.getTime());

                //pid
                String pid = URL.substring(URL.indexOf("=") + 1, URL.indexOf("&"));
                String statusString = URL.substring(URL.lastIndexOf("=") + 1, URL.length());
                //status
                int status = 0;
                if (statusString.equals("current")) {
                    status = 1;
                }


//                System.out.println(URL);
//                System.out.println("pid:" + pid);
//                System.out.println("showName:" + showName);
//                System.out.println("poster:" + poster);
//                System.out.println("score:" + score);
//                System.out.println("director:" + director);
//                System.out.println("starring:" + starring);
//                System.out.println("plot:" + plot);
//                System.out.println("country:" + country);
//                System.out.println("language:" + language);
//                System.out.println("duration:" + duration);
//                System.out.println("introduction:" + introduction);
//                System.out.println("picture:" + picture);
//                System.out.println("status:" + status);
//                System.out.println("date" + date);
//                System.out.println(date);


                try {
                    String sql1 = "select status from play where pid=?";
                    Play play = qr.query(sql1, new BeanHandler<Play>(Play.class), pid);
                    if (play == null){
                        String sql2 = "insert into play values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                        qr.update(sql2, pid, showName, poster, score, director, starring, plot, country, language, duration, introduction, picture, status, i, date);
                    } if (play != null) {
                        String sql3 = "update play set status=? where pid=?";
                        qr.update(sql3, status, pid);
                    }

                } catch (SQLException e) {
                    continue;
                }

                if (i++ == 51) {
                    break;
                }
            }
        } catch (Exception e) {
            System.out.println("-------------解析发生异常-------------");
        }
    }

    public void updateAllPlay() {
        try {
            String sql = "update play set status=3";
            qr.update(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
