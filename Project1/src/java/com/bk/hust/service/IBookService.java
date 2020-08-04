/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.service;

import com.bk.hust.model.BookModel;
import com.bk.hust.paging.Pageble;
import java.util.List;

/**
 *
 * @author Ngô Đức Nam
 */
public interface IBookService {
    List<BookModel> findByCategoryId(Long categoryId);
    BookModel save(BookModel bookModel);
    List<BookModel> findAll(Pageble pageble);
    List<BookModel> findBookAll();
    List<BookModel> findBookById(Long id);
    int getTotalItem();
}
