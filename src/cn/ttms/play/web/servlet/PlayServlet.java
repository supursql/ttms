package cn.ttms.play.web.servlet;

import cn.itcast.commons.CommonUtils;
import cn.ttms.play.pojo.Play;
import cn.ttms.play.service.PlayException;
import cn.ttms.play.service.PlayService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "PlayServlet", urlPatterns = "/playServlet")
public class PlayServlet extends HttpServlet {

    private PlayService playService = new PlayService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "0");
        response.setHeader("Access-Control-Allow-Headers", "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token,Access-Control-Allow-Headers");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("XDomainRequestAllowed","1");
        request.setCharacterEncoding("utf-8");

        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String method = request.getParameter("method");

        if(method.equals("addPlay")) {
            addPlay(request, response);
        } else if (method.equals("modifyPlay")) {
            modifyPlay(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "0");
        response.setHeader("Access-Control-Allow-Headers", "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token,Access-Control-Allow-Headers");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("XDomainRequestAllowed","1");
        request.setCharacterEncoding("UTF-8");

        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String method = request.getParameter("method");

        List<Play> playList = null;
        Play play = null;

        if (method.equals("showAll")) {
            playList = showAll(request, response);
            JSONArray jsonArray = JSONArray.fromObject(playList);
            response.getWriter().print(jsonArray);
        } else if (method.equals("selectOne")) {
            String pid = request.getParameter("id");

            play = selectOne(request, response, pid);
            JSONObject jsonObject = JSONObject.fromObject(play);
            response.getWriter().print(jsonObject);
        } else if (method.equals("showAllLimitOnCurrent")) {
            playList = showAllLimitOnCurrent(request, response);
            JSONArray jsonArray = JSONArray.fromObject(playList);
            response.getWriter().print(jsonArray);
        } else if (method.equals("showAllLimitOnSoon")) {
            playList = showAllLimitOnSoon(request, response);
            JSONArray jsonArray = JSONArray.fromObject(playList);
            response.getWriter().print(jsonArray);
        } else if (method.equals("dropOffPlay")) {
            dropOffPlay(request, response);
        }
    }

    /**
     *
     * 展示所有信息
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    public List<Play> showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return playService.showAll();
    }

    /**
     * 展示特定的信息
     * @param request
     * @param response
     * @param pid
     * @return
     * @throws ServletException
     * @throws IOException
     */
    public Play selectOne(HttpServletRequest request, HttpServletResponse response, String pid) throws ServletException, IOException {
        return playService.selectOne(pid);
    }

    /**
     * 展示上映电影的前5条信息
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    public List<Play> showAllLimitOnCurrent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return playService.showAllLimitOnCurrent();
    }

    /**
     * 展示未上映电影的前5条信息
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    public List<Play> showAllLimitOnSoon(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return playService.showAllLimitOnSoon();
    }

    public void addPlay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject jsonObject = new JSONObject();
        Play play = new Play();

        play.setPid(CommonUtils.uuid());
        play.setShowName(request.getParameter("showName"));
        play.setPoster(request.getParameter("poster"));
        play.setScore(Float.parseFloat(request.getParameter("score")));
        play.setDirector(request.getParameter("director"));
        play.setStarring(request.getParameter("starring"));
        play.setPlot(request.getParameter("plot"));
        play.setCountry(request.getParameter("country"));
        play.setLanguage(request.getParameter("language"));
        play.setDuration(Integer.parseInt(request.getParameter("duration")));
        play.setIntroduction(request.getParameter("introduction"));
        play.setPicture(request.getParameter("picture"));
        play.setStatus(Integer.parseInt(request.getParameter("status")));
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");


        try {
            Date date = dateFormat.parse(request.getParameter("date"));
            play.setDate(date);
            try {
                playService.addPlay(play);
                jsonObject.put("success", "添加成功");
            } catch (PlayException e) {
                jsonObject.put("fail", e.getMessage());
            }
        } catch (ParseException e) {
            jsonObject.put("fail", "日期异常");
        } finally {
            response.getWriter().print(jsonObject);
        }

    }

    public void modifyPlay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject jsonObject = new JSONObject();
        Play play = new Play();

        play.setPid(request.getParameter("pid"));
        play.setShowName(request.getParameter("showName"));
        play.setPoster(request.getParameter("poster"));
        play.setScore(Float.parseFloat(request.getParameter("score")));
        play.setDirector(request.getParameter("director"));
        play.setStarring(request.getParameter("starring"));
        play.setPlot(request.getParameter("plot"));
        play.setCountry(request.getParameter("country"));
        play.setLanguage(request.getParameter("language"));
        play.setDuration(Integer.parseInt(request.getParameter("duration")));
        play.setIntroduction(request.getParameter("introduction"));
        play.setPicture(request.getParameter("picture"));
        play.setStatus(Integer.parseInt(request.getParameter("status")));
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Date date = dateFormat.parse(request.getParameter("date"));
            play.setDate(date);
            playService.modifyPlay(play);
            jsonObject.put("success", "添加成功");
        } catch (ParseException e) {
            jsonObject.put("fail", "日期异常");
        } finally {
            response.getWriter().print(jsonObject);
        }
    }

    public void dropOffPlay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        playService.dropOffPlay(pid);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("succuss", "下架成功");
        response.getWriter().print(jsonObject);
    }
}
