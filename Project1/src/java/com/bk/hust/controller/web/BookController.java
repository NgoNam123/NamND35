/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.controller.web;

import com.bk.hust.model.BookModel;
import com.bk.hust.service.IBookService;
import com.bk.hust.utils.FormUtil;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/read-book", "/detail-book"})
/**
 *
 * @author Ngô Đức Nam
 */
public class BookController extends HttpServlet {

    @Inject
    private IBookService bookService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BookModel model = FormUtil.toModel(BookModel.class, req);
        String action = req.getParameter("action");
        Long id = Long.parseLong(req.getParameter("id"));
        model.setId(id);
        if (model.getId() != null) {
            bookService.findBookById(model.getId());
            req.setAttribute("BOOKMODEL", bookService.findBookById(model.getId()).get(0));
        }
        if (action != null && action.equals("read")) {
            RequestDispatcher rq = req.getRequestDispatcher("/views/read.jsp");
            rq.forward(req, resp);
        }

        if (action != null && action.equals("detail")) {
            RequestDispatcher rq = req.getRequestDispatcher("/views/detail.jsp");
            rq.forward(req, resp);
        }

    }
}
