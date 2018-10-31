package cn.ttms.seat.web.service;

import cn.ttms.seat.pojo.Seat;
import cn.ttms.seat.service.SeatService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SeatServlet", urlPatterns = "/seatServlet")
public class SeatServlet extends HttpServlet {

    private SeatService seatService = new SeatService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Headers", "X-Requested-With");
        response.setHeader("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
        response.setHeader("X-Powered-By", "3.2.1");

        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String method = request.getParameter("method");

        if (method.equals("modifySeat")) {
            modifySeat(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Headers", "X-Requested-With");
        response.setHeader("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
        response.setHeader("X-Powered-By", "3.2.1");

        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String method = request.getParameter("method");

        if (method.equals("showAll")) {
            String studioid = request.getParameter("studioid");
            int[][] seatList = showAll(request, response, studioid);

            JSONArray jsonArray = JSONArray.fromObject(seatList);

            response.getWriter().print(jsonArray);
        }

    }

    public int[][] showAll(HttpServletRequest request, HttpServletResponse response, String studioid) throws ServletException, IOException {
        String row = request.getParameter("row");
        String col = request.getParameter("col");

        return seatService.showAllSeat(studioid, Integer.parseInt(row), Integer.parseInt(col));
    }


    public void modifySeat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] seatArray = request.getParameterValues("seatArray");
        String studioid = request.getParameter("studioid");
        String status = request.getParameter("status");

        seatService.modifySeat(seatArray, studioid, Integer.parseInt(status));

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", "success");
        response.getWriter().print(jsonObject);
    }
}
