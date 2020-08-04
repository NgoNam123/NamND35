/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.dao.IMPL;

import com.bk.hust.dao.IBookDAO;
import com.bk.hust.mapper.BookMapper;
import com.bk.hust.model.BookModel;
import com.bk.hust.paging.Pageble;
import java.util.List;

public class BookDAO extends AbstractDAO<BookModel> implements IBookDAO {

    @Override
    public List<BookModel> findByCategoryId(Long categoryId) {
        String sql = "SELECT * FROM book WHERE categoryid=?";
        return query(sql,new BookMapper(), categoryId);
    }

    @Override
    public Long save(BookModel bookModel) {
        String sql="INSERT INTO book (title, content, categoryid, authorid) VALUES(?,?,?,?)";
        return insert(sql, bookModel.getTitle(), bookModel.getContent(), bookModel.getCategoryId(), bookModel.getAuthorId());
    }

    @Override
    public BookModel findOne(Long id) {
        String sql = "SELECT * FROM book WHERE id=?";
        List<BookModel> books= query(sql, new BookMapper(), id);
        return books.isEmpty() ? null:books.get(0);
    }

    @Override
    public List<BookModel> findAll(Pageble pageble) {
         StringBuilder sql=new StringBuilder("SELECT * FROM book");
         
         if(pageble.getSorter() !=null){
             sql.append(" ORDER BY ").append(pageble.getSorter().getSortName()).append(" ").append(pageble.getSorter().getSortBy()).append("");
         }
         
         if(pageble.getOffset() !=null && pageble.getLimit() !=null){
             sql.append(" LIMIT ").append(pageble.getOffset()).append(", ").append(pageble.getLimit()).append("");
         } 
         return query(sql.toString(), new BookMapper());
    }

    @Override
    public int getTotalItem() {
        String sql="SELECT count(*) FROM book";
        return count(sql);
    }

    @Override
    public List<BookModel> findBookAll() {
        String sql="SELECT * FROM book";
        return query(sql, new BookMapper());
    }

    @Override
    public List<BookModel> findBookById(Long id) {
        String sql = "SELECT * FROM book WHERE id=?";
        return query(sql,new BookMapper(), id);
    }

}
