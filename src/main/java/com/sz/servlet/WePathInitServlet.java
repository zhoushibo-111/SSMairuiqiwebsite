package com.sz.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = {}, loadOnStartup = 2)
public class WePathInitServlet extends HttpServlet {

    public void init(ServletConfig config) throws ServletException {
        System.out.println(config.getServletContext().getContextPath());
        //在整体应用上下文中存储了一个ctx的值，用它来引用上下文路径。
        config.getServletContext().setAttribute("ctx",config.getServletContext().getContextPath());
        super.init(config);
    }
}
