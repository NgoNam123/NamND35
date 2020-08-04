/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.service;

import com.bk.hust.model.UserModel;

public interface IUserService {
    UserModel findByUserNameAndPassWord(String userName, String passWord);
    boolean sendMail(String to, String subject, String text);
    boolean checkAccountByEmail(String email);
    boolean checkAccountByUserName(String userName);
    UserModel addAccount(UserModel userModel);
    UserModel updateAccount(UserModel updateModel);
}
