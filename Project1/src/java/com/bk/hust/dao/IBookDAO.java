/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.dao;

import com.bk.hust.model.BookModel;
import com.bk.hust.paging.Pageble;
import java.util.List;

public interface IBookDAO extends GenericDAO<BookModel>{
    List<BookModel> findByCategoryId(Long categoryId);
    Long save(BookModel bookModel);
    BookModel findOne(Long id);
    List<BookModel> findAll(Pageble pageble);
    List<BookModel> findBookAll();
    List<BookModel> findBookById(Long id);
    int getTotalItem();
}
