/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.mapper;

import com.bk.hust.model.CategoryModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper<CategoryModel> {

    @Override
    public CategoryModel mapRow(ResultSet rs) {
        try {
            CategoryModel categoryModel = new CategoryModel();
            categoryModel.setId(rs.getLong("id"));
            categoryModel.setName(rs.getString("name"));
            categoryModel.setCode(rs.getString("code"));
            return categoryModel;
        } catch (SQLException e) {
            return null;
        }
    }

}
