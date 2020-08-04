/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.controller.web;

import com.bk.hust.constant.SystemConstant;
import com.bk.hust.model.BookModel;
import com.bk.hust.model.UserModel;
import com.bk.hust.service.IUserService;
import com.bk.hust.utils.FormUtil;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns ={ "/thong-tin", "/thay-doi-thong-tin"})

public class UserController extends HttpServlet{

    @Inject
    private IUserService userService;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       UserModel model=FormUtil.toModel(UserModel.class, req);
       String action=req.getParameter("action");
       if(action !=null && action.equals("change")){
            RequestDispatcher rq=req.getRequestDispatcher("/views/change.jsp");
            rq.forward(req, resp);
       } else{
           RequestDispatcher rq=req.getRequestDispatcher("/views/infor-user.jsp");
           rq.forward(req, resp);
       }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action !=null && action.equals("change")){
            UserModel userUpdate=FormUtil.toModel(UserModel.class, req);
            userUpdate=userService.updateAccount(userUpdate);
            resp.sendRedirect(req.getContextPath() + "/thong-tin?action=infor");
        }
        
    }
   
}
