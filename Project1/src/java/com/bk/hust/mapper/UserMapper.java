/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.mapper;

import com.bk.hust.model.BookModel;
import com.bk.hust.model.RoleModel;
import com.bk.hust.model.UserModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel> {

    @Override
    public UserModel mapRow(ResultSet rs) {
        try {
            UserModel userModel = new UserModel();
            userModel.setId(rs.getLong("id"));
            userModel.setUserName(rs.getString("username"));
            userModel.setPassword(rs.getString("password"));
            userModel.setFullName(rs.getString("fullname"));
            userModel.setSdt(rs.getString("sdt"));
            userModel.setEmail(rs.getString("email"));
            userModel.setAvatar(rs.getString("avatar"));
            userModel.setRoleId(rs.getLong("roleid"));
            userModel.setCreatedBy(rs.getString("createdby"));
            userModel.setCreatedDate(rs.getTimestamp("createddate"));
            try {
                RoleModel role = new RoleModel();
                role.setName(rs.getString("name"));
                role.setCode(rs.getString("code"));
                userModel.setRole(role);
            } catch (Exception e) {
                return null;
            }

            if (rs.getTimestamp("modifieddate") != null) {
                userModel.setModifiedDate(rs.getTimestamp("modifieddate"));
            }

            if (rs.getString("modifiedby") != null) {
                userModel.setModifiedBy(rs.getString("modifiedby"));
            }
            return userModel;
        } catch (SQLException ex) {
            return null;
        }
    }

}
