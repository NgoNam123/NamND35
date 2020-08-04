/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.mapper;

import com.bk.hust.model.BookModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookMapper implements RowMapper<BookModel>{
    @Override
    public BookModel mapRow(ResultSet rs) {
        try {
            BookModel bookModel=new BookModel();
            bookModel.setId(rs.getLong("id"));
            bookModel.setTitle(rs.getString("title"));
            bookModel.setThumbnail(rs.getString("thumbnail"));
            bookModel.setShortDescription(rs.getString("shortdescription"));
            bookModel.setContent(rs.getString("content"));
            bookModel.setCategoryId(rs.getLong("categoryid"));
            bookModel.setAuthorId(rs.getLong("authorid"));
            bookModel.setCreatedBy(rs.getString("createdby"));
            bookModel.setCreatedDate(rs.getTimestamp("createddate"));
            if(rs.getTimestamp("modifieddate")!=null){
                bookModel.setModifiedDate(rs.getTimestamp("modifieddate"));
            }
            
            if(rs.getString("modifiedby") !=null){
                bookModel.setModifiedBy(rs.getString("modifiedby"));
            }
            return bookModel;
        } catch (SQLException ex) {
           return null;
        }
    }
}
