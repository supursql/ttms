package cn.ttms.studio.web.service;

import cn.itcast.commons.CommonUtils;
import cn.ttms.studio.pojo.Studio;
import cn.ttms.studio.service.StudioException;
import cn.ttms.studio.service.StudioService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

@WebServlet(name = "StudioServlet", urlPatterns = "/studioServlet")
public class StudioServlet extends HttpServlet {

    private StudioService studioService = new StudioService();

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

        if (method.equals("addStudio")) {
            addStudio(request, response);
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

        String method = request.getParameter("method");
        if (method.equals("deleteStudio")) {
            deleteStudio(request, response);
        } else if (method.equals("showAll")) {
            List<Studio> studioList = showAll(request, response);

            JSONArray jsonArray = JSONArray.fromObject(studioList);

            response.getWriter().print(jsonArray);
        }
    }

    public void addStudio(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Studio studio = new Studio();
        studio.setName(request.getParameter("name"));
        studio.setRow(Integer.parseInt(request.getParameter("row")));
        studio.setCol(Integer.parseInt(request.getParameter("col")));
        studio.setIntroduction(request.getParameter("introduction"));

        studio.setSid(CommonUtils.uuid());

        JSONObject jsonObject = new JSONObject();

        try {
            studioService.addStudio(studio);
            jsonObject.put("success", "添加成功");
        } catch (StudioException e) {
            jsonObject.put("fail", e.getMessage());
        } finally {
            response.getWriter().print(jsonObject);
        }

    }

    public void deleteStudio(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name =  URLDecoder.decode((new String(request.getParameter("name").getBytes("ISO8859-1"), "UTF-8")), "UTF-8");

        studioService.updateStatus(name, 2);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", "删除成功");
        response.getWriter().print(jsonObject);
    }

    public List<Studio> showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return studioService.showAll();
    }
}
