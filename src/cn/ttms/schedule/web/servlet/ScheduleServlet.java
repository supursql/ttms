package cn.ttms.schedule.web.servlet;

import cn.ttms.schedule.pojo.Schedule;
import cn.ttms.schedule.service.ScheduleException;
import cn.ttms.schedule.service.ScheduleService;
import cn.ttms.user.pojo.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ScheduleServlet", urlPatterns = "/scheduleServlet")
public class ScheduleServlet extends HttpServlet {

    private ScheduleService scheduleService = new ScheduleService();

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

        if (method.equals("addSchedule")) {
            addSchedule(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "0");
        response.setHeader("Access-Control-Allow-Headers", "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token,Access-Control-Allow-Headers");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("XDomainRequestAllowed","1");

        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String method = request.getParameter("method");
        JSONObject jsonObject;

        if (method.equals("selectScheduleById")){
            String sid = request.getParameter("sid");

            User user = (User) request.getSession().getAttribute("session_user");

            if (user == null) {
                jsonObject = new JSONObject();
                jsonObject.put("error", "请先登录");
                response.getWriter().print(jsonObject);
                return;
            }

            Schedule schedule = selectScheduleById(request, response, sid);

            jsonObject = new JSONObject();
            jsonObject.put("sid", schedule.getSid());
            jsonObject.put("startTime", schedule.getStartTime());
            jsonObject.put("endTime", schedule.getEndTime());
            jsonObject.put("status", schedule.getStatus());
            jsonObject.put("price", schedule.getPrice());
            jsonObject.put("studio", schedule.getStudio());
            jsonObject.put("seatArray", schedule.getSeatArray());
            jsonObject.put("phoneNumber", user.getPhoneNumber());

            response.getWriter().print(jsonObject);
        } else if (method.equals("selectOnPid")) {
            selectOnPid(request, response);
        } else if (method.equals("showAll")) {
            showAll(request, response);
        }
    }

    public Schedule selectScheduleById(HttpServletRequest request, HttpServletResponse response, String sid) throws ServletException, IOException {

        return scheduleService.selectScheduleById(sid);
    }

    public void selectOnPid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");

        List<Schedule> scheduleList = scheduleService.selectOnPid(pid);

        JSONArray jsonArray = JSONArray.fromObject(scheduleList);

        response.getWriter().print(jsonArray);
    }

    public void addSchedule(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject jsonObject = new JSONObject();

        Schedule schedule = new Schedule();

        try {
            String pid = request.getParameter("pid");

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            Date date = dateFormat.parse(request.getParameter("date"));
            schedule.setStartTime(new Timestamp(date.getTime()));

            schedule.setPrice(Float.parseFloat(request.getParameter("price")));

//            String studioName =  URLDecoder.decode((new String(request.getParameter("studioName").getBytes("ISO8859-1"), "UTF-8")), "UTF-8");
            String studioName = request.getParameter("studioName");
            String duration = request.getParameter("duration");

            try {
                scheduleService.addSchedule(schedule, pid, studioName, Integer.parseInt(duration));
                jsonObject.put("success", "添加成功");
            } catch (ScheduleException e) {
                jsonObject.put("fail", e.getMessage());
            }

        } catch (ParseException e) {
            jsonObject.put("fail", "日期异常");
        } finally {
            response.getWriter().print(jsonObject);
        }


    }

    public void showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name =  URLDecoder.decode((new String(request.getParameter("name").getBytes("ISO8859-1"), "UTF-8")), "UTF-8");

        List<Schedule> scheduleList = scheduleService.selectOnStudioName(name);

        JSONArray jsonArray = JSONArray.fromObject(scheduleList);

        response.getWriter().print(jsonArray);
    }
}
