/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.dao;

import com.bk.hust.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
    UserModel findByUserNameAndPassWord(String userName, String passWord);
    public boolean sendMail(String to, String subject, String text);
    boolean passwwordRecover(String userName, String email);
    boolean checkAccountByEmail(String email);
    boolean checkAccountByUserName(String userName);
    Long addAccount(UserModel userModel);
    UserModel findOne(Long id);
    void update(UserModel updateModel);
}
