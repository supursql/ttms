package cn.ttms.user.web.servlet;

import java.io.IOException;
import java.text.MessageFormat;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.commons.CommonUtils;
import cn.itcast.mail.Mail;
import cn.itcast.mail.MailUtils;
import cn.ttms.user.pojo.User;
import cn.ttms.user.service.UserService;
import cn.ttms.user.service.UserException;
import net.sf.json.JSONObject;

/**
 * User表述层
 */
@WebServlet(name = "UserServlet", value = "/userServlet")
public class UserServlet extends HttpServlet {
    private UserService userService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "0");
        response.setHeader("Access-Control-Allow-Headers", "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token,Access-Control-Allow-Headers");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("XDomainRequestAllowed","1");

        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String method = request.getParameter("method");

        if(method.equals("regist")){
            regist(request, response);
        } else if (method.equals("login")){
            login(request, response);
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
        if (method.equals("active")) {
            active(request, response);
        } else if(method.equals("findByUsername")) {
            String name = request.getParameter("name");
            findByUsername(request, response, name);
        } else if (method.equals("destroy")) {
            destroy(request, response);
        }
    }

    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setCharacterEncoding("UTF-8");
        User form = new User();
        form.setName(request.getParameter("name"));
        form.setPassword(request.getParameter("password"));

        String isAdmin = request.getParameter("isAdmin");

        JSONObject jsonObject = new JSONObject();

        try {


            User user = userService.login(form, isAdmin);

            if (isAdmin == null) request.getSession().setAttribute("session_user", user);
            else request.getSession().setAttribute("session_admin", user);

            jsonObject.put("success", "/user/main.html");
        } catch (UserException e) {
            String exception = e.getMessage();
            jsonObject.put("fail", exception);
        } finally {
            response.getWriter().print(jsonObject.toString());
        }

    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void active(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        try {
            userService.active(code);
            response.sendRedirect("user/user.html");
        } catch (UserException e) {
//            request.setAttribute("msg", e.getMessage());
        }
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = CommonUtils.toBean(request.getParameterMap(), User.class);
        user.setUid(CommonUtils.uuid());
        user.setCode(CommonUtils.uuid() + CommonUtils.uuid());
        user.setState(0);

        JSONObject jsonObject;

        try {
            userService.regist(user);
            jsonObject = new JSONObject();
            jsonObject.put("success", "注册成功");
            response.getWriter().print(jsonObject);
        } catch (UserException e) {
            jsonObject = new JSONObject();
            jsonObject.put("fail", e.getMessage());
            response.getWriter().print(jsonObject);
            return;
        }

//        Properties props = new Properties();
//        props.load(this.getClass().getClassLoader().getResourceAsStream("email_template.properties"));
//        String host = props.getProperty("host");//获取服务器主机
//        String uname = props.getProperty("uname");//获取用户名
//        String pwd = props.getProperty("pwd");//获取密码
//        String from = props.getProperty("from");//获取发件人
//        String to = user.getEmail();//获取收件人
//        String subject = props.getProperty("subject");//获取主题
//        String content = props.getProperty("content");//获取邮件内容
//
//
//        content = MessageFormat.format(content, user.getCode());//替换{0}
//
//        Session session = MailUtils.createSession(host, uname, pwd);//得到session
//        Mail mail = new Mail(from, to, subject, content);//创建邮件对象
//        try {
//            MailUtils.send(session, mail);//发邮件！
//        } catch (MessagingException e) {
//            jsonObject.put("fail", "服务器繁忙");
//            response.getWriter().print(jsonObject);
//        }

    }

    protected void findByUsername(HttpServletRequest request, HttpServletResponse response, String name) throws ServletException, IOException {
        User user = userService.findByUsername(name);
        JSONObject jsonObject = JSONObject.fromObject(user);
        response.getWriter().print(jsonObject);
    }

    protected void destroy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("session_user");

        JSONObject jsonObject = new JSONObject();

        if (user != null) {
            request.getSession().invalidate();
            jsonObject.put("success", "已退出登录");
            response.getWriter().print(jsonObject);
        }
    }
}
