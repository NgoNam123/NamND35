/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.controller.admin;

import com.bk.hust.constant.SystemConstant;
import com.bk.hust.model.BookModel;
import com.bk.hust.paging.PageRequest;
import com.bk.hust.paging.Pageble;
import com.bk.hust.service.IBookService;
import com.bk.hust.sort.Sorter;
import com.bk.hust.utils.FormUtil;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin-book"})
public class BookController extends HttpServlet {

    @Inject
    private IBookService bookService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BookModel model=FormUtil.toModel(BookModel.class, req);
        Pageble pageble=new PageRequest(model.getPage(), model.getMaxPageItem(),
                new Sorter(model.getSortName(), model.getSortBy()));
        model.setListResults(bookService.findAll(pageble));
        model.setTotalItem(bookService.getTotalItem());
        model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
        req.setAttribute(SystemConstant.MODEL, model);
        RequestDispatcher rq = req.getRequestDispatcher("/views/admin/book/list.jsp");
        rq.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

}
