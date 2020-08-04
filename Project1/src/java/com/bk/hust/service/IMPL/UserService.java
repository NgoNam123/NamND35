/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.service.IMPL;

import com.bk.hust.dao.IUserDAO;
import com.bk.hust.model.UserModel;
import com.bk.hust.service.IUserService;
import java.sql.Timestamp;
import javax.inject.Inject;

public class UserService implements IUserService{

    @Inject
    private IUserDAO userDAO;
    @Override
    public UserModel findByUserNameAndPassWord(String userName, String passWord) {
        return userDAO.findByUserNameAndPassWord(userName, passWord);
    }

    @Override
    public boolean sendMail(String to, String subject, String text) {
        return userDAO.sendMail(to, subject, text);
    }

    @Override
    public boolean checkAccountByEmail(String email) {
        return userDAO.checkAccountByEmail(email);
    }

    @Override
    public boolean checkAccountByUserName(String userName) {
        return userDAO.checkAccountByUserName(userName);
    }

    @Override
    public UserModel addAccount(UserModel userModel) {
        Long idUser=userDAO.addAccount(userModel);
        return userDAO.findOne(idUser);
    }

    @Override
    public UserModel updateAccount(UserModel updateModel) {
                UserModel oldUser = userDAO.findOne(updateModel.getId());
		updateModel.setCreatedDate(updateModel.getCreatedDate());
		updateModel.setCreatedBy(updateModel.getCreatedBy());
		updateModel.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		return userDAO.findOne(updateModel.getId());
    }
    
}
