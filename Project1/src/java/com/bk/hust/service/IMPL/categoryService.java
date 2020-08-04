/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.service.IMPL;

import com.bk.hust.dao.ICategoryDAO;
import com.bk.hust.model.CategoryModel;
import com.bk.hust.service.ICategoryService;
import java.util.List;
import javax.inject.Inject;

public class categoryService implements ICategoryService{

    @Inject
    private ICategoryDAO categoryDAO;
    
    @Override
    public List<CategoryModel> findAll() {
        return categoryDAO.findAll();
    }
    
}
