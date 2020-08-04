/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.controller.web;

import com.bk.hust.constant.SystemConstant;
import com.bk.hust.model.BookModel;
import com.bk.hust.model.UserModel;
import com.bk.hust.paging.PageRequest;
import com.bk.hust.paging.Pageble;
import com.bk.hust.service.IBookService;
import com.bk.hust.service.ICategoryService;
import com.bk.hust.service.IUserService;
import com.bk.hust.sort.Sorter;
import com.bk.hust.utils.FormUtil;
import com.bk.hust.utils.SessionUtil;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/trang-chu", "/dang-nhap", "/dang-xuat"})
public class HomeController extends HttpServlet {

    private String messages="";
    
    @Inject
    private ICategoryService categoryService;
    @Inject
    private IBookService bookService;
    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null && action.equals("login")) {
            String message=req.getParameter("message");
            if(message!=null){
                req.setAttribute("message", messages);
            }
            RequestDispatcher rq = req.getRequestDispatcher("/views/login.jsp");
            rq.forward(req, resp);
        } else if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(req, "USERMODEL");
            resp.sendRedirect(req.getContextPath() + "/trang-chu");
        }else{
            BookModel model=FormUtil.toModel(BookModel.class, req);
            model.setListResults(bookService.findBookAll());
            req.setAttribute(SystemConstant.MODEL, model);
            RequestDispatcher rq = req.getRequestDispatcher("/views/web/home.jsp");
            rq.forward(req, resp);
            
            
        }
        
        
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action != null && action.equals("login")) {
            UserModel model = FormUtil.toModel(UserModel.class, req);
            model = userService.findByUserNameAndPassWord(model.getUserName(), model.getPassword());
            if (model != null) {
                SessionUtil.getInstance().putValue(req, "USERMODEL", model);
                if (model.getRole().getCode().equals("USER")) {
                    Cookie userName = new Cookie("user", model.getUserName());
			userName.setMaxAge(30*60);
			resp.addCookie(userName);
                    messages="Đăng nhập thành công";
                    resp.sendRedirect(req.getContextPath() + "/trang-chu");
                    if (action != null && action.equals("infor")) {
                        messages="Đăng nhập thành công";
                        resp.sendRedirect(req.getContextPath() + "/thong-tin");
                    }
                } else if (model.getRole().getCode().equals("ADMIN")) {
                    resp.sendRedirect(req.getContextPath() + "/admin-home");
                }

            } else {
                messages="Tài khoản hoặc mật khẩu không chính xác";
                resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login&message=messages");
            }
            
           
        }
         
    }
}
