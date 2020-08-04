/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.controller.web;

import com.bk.hust.model.UserModel;
import com.bk.hust.service.IUserService;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/dang-ky"})
public class RegisterController extends HttpServlet {

    @Inject
    private IUserService userService;

    private String messages = "";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String message = req.getParameter("message");
        if (action != null && action.equals("register")) {
            if (message != null) {
                req.setAttribute("message", messages);
            }
            RequestDispatcher rq = req.getRequestDispatcher("/views/register.jsp");
            rq.forward(req, resp);
        } else if (action != null && action.equals("welcome")) {
            RequestDispatcher rq = req.getRequestDispatcher("/views/welcome.jsp");
            rq.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        String userName = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String userNameErr = "", emaiErr = "", passwordErr = "";

        if (userName.equals("")) {
            userNameErr += "Vui lòng nhập UserName";
        } else if (userService.checkAccountByUserName(userName) == true) {
            userNameErr += "Tài khoản đã tồn tại";
        }

        if (userNameErr.length() > 0) {
            req.setAttribute("userNameErr", userNameErr);
        }

        if (email.equals("")) {
            emaiErr = "Vui lòng nhập địa chỉ email của bạn";
        } else if (userService.checkAccountByEmail(email) == true) {
            emaiErr += "Địa chỉ email đã được đăng ký";
        }

        if (emaiErr.length() > 0) {
            req.setAttribute("emaiErr", emaiErr);
        }

        if (password.equals("")) {
            passwordErr = "Vui lòng nhập mặt khẩu";
        }

        if (passwordErr.length() > 0) {
            req.setAttribute("passwordErr", passwordErr);
        }
        try {
            if (userNameErr.length() == 0 && emaiErr.length() == 0 && passwordErr.length() == 0) {
                UserModel userModel = new UserModel(userName, password, email, 2L);
                userService.addAccount(userModel);
                resp.sendRedirect(req.getContextPath() + "/dang-ky?action=welcome");
                userService.sendMail(email, "Register Successfull", "username:" + userName + "   " + "password:" + password);
            } else {
                resp.sendRedirect(req.getContextPath() + "/dang-ky?action=register");
            }
        } catch (Exception e) {
        }
    }
}
