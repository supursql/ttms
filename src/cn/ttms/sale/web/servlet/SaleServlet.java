package cn.ttms.sale.web.servlet;

import cn.ttms.sale.pojo.SaleItem;
import cn.ttms.sale.service.SaleService;
import cn.ttms.user.pojo.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SaleServlet", urlPatterns = "/saleServlet")
public class SaleServlet extends HttpServlet {

    private SaleService saleService = new SaleService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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

        if (method.equals("addSaleItem")) {
            String[] seatList = request.getParameterValues("seatList");

            String scheduleid = request.getParameter("scheduleid");

            User user = (User) request.getSession().getAttribute("session_user");

            addSaleItem(request, response, seatList, scheduleid, user);
        } else if (method.equals("payment")) {
            String saleItemid = request.getParameter("sid");
            String totalPrice = request.getParameter("totalPrice");
            String isPay = request.getParameter("isPay");

            if (isPay.equals("true")) {
                payment(request, response, saleItemid, totalPrice);
            }
        } else if (method.equals("showAllSaleItem")) {
            String name = request.getParameter("name");

            showAllSaleItem(request, response, name);
        }
    }

    /**
     * 添加订单
     * @param request
     * @param response
     * @param seatList
     * @param scheduleid
     * @throws ServletException
     * @throws IOException
     */
    protected void addSaleItem(HttpServletRequest request, HttpServletResponse response, String[] seatList, String scheduleid, User user) throws ServletException, IOException {

        SaleItem saleItem = saleService.addSaleItem(seatList, scheduleid, user);

        JSONObject jsonObject = JSONObject.fromObject(saleItem);

        response.getWriter().print(jsonObject);

    }

    protected void payment(HttpServletRequest request, HttpServletResponse response, String sid, String totalPrice) throws ServletException, IOException {

        saleService.updateSaleItem(sid, totalPrice);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", "交易成功");

        response.getWriter().print(jsonObject);

    }

    protected void showAllSaleItem(HttpServletRequest request, HttpServletResponse response, String name) throws ServletException, IOException {
        List<SaleItem> saleItemList = saleService.showAllSaleItem(name);

        JSONArray jsonArray = JSONArray.fromObject(saleItemList);

        response.getWriter().print(jsonArray);
    }
}
