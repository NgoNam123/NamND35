/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.dao;

import com.bk.hust.model.CategoryModel;
import java.util.List;

public interface ICategoryDAO extends GenericDAO<CategoryModel>{
    List<CategoryModel> findAll();
}
