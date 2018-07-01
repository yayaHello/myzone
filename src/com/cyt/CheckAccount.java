package com.cyt;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import bean.AccountBean;
import javax.servlet.http.HttpSession;

public class CheckAccount extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
            HttpSession session = req.getSession();
            AccountBean account = new AccountBean();
            String username = req.getParameter("user");
            String psaaword = req.getParameter("password");
            account.setPassword(psaaword);
            account.setUsername(username);
            if((username != null)&&(username.trim().equals("jsp"))) {
                if((psaaword != null)&&(psaaword.trim().equals("1"))) {
                    System.out.println("success");
                    session.setAttribute("account", account);
                    String login_suc = "index.jsp";
                    resp.sendRedirect(login_suc);
                    return;
                }
        }
        System.out.println("fail");
        String login_fail = "fail.jsp";
        resp.sendRedirect(login_fail);
        return;
    }

}

