/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.service.IMPL;

import com.bk.hust.dao.IBookDAO;
import com.bk.hust.model.BookModel;
import com.bk.hust.paging.Pageble;
import com.bk.hust.service.IBookService;
import java.util.List;
import javax.inject.Inject;

public class BookService implements IBookService{

    @Inject
    private IBookDAO bookDAO;
    
    @Override
    public List<BookModel> findByCategoryId(Long categoryId) {
        return bookDAO.findByCategoryId(categoryId);
    }

    @Override
    public BookModel save(BookModel bookModel) {
        Long bookId=bookDAO.save(bookModel);
        return bookDAO.findOne(bookId);
    }

    @Override
    public int getTotalItem() {
        return bookDAO.getTotalItem();
    }

    @Override
    public List<BookModel> findAll(Pageble pageble) {
        return bookDAO.findAll(pageble);
    }

    @Override
    public List<BookModel> findBookAll() {
        return bookDAO.findBookAll();
    }

    @Override
    public List<BookModel> findBookById(Long id) {
        return bookDAO.findBookById(id);
    }
    
}
