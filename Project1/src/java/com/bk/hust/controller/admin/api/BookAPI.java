/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.controller.admin.api;

import com.bk.hust.model.BookModel;
import com.bk.hust.service.IBookService;
import com.bk.hust.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/api-admin-book"})
public class BookAPI extends HttpServlet{

    @Inject
    private IBookService bookService;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       ObjectMapper mapper=new ObjectMapper();
       req.setCharacterEncoding("UTF-8");
       resp.setContentType("application/json");
       BookModel bookModel =HttpUtil.of(req.getReader()).toModel(BookModel.class);
       bookModel =bookService.save(bookModel);
       System.out.println(bookModel);
//       mapper.writeValue(resp.getOutputStream(), bookModel);
    }

//    @Override
//    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPut(req, resp); //To change body of generated methods, choose Tools | Templates.
//    }

//    @Override
//    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doDelete(req, resp); //To change body of generated methods, choose Tools | Templates.
//    }
    
}
