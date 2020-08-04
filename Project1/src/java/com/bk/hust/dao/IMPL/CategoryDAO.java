/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.dao.IMPL;

import com.bk.hust.dao.ICategoryDAO;
import com.bk.hust.mapper.CategoryMapper;
import com.bk.hust.model.CategoryModel;
import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

    @Override
    public List<CategoryModel> findAll() {
       String sql="SELECT * FROM category";
       return query(sql, new CategoryMapper());
    }

}
