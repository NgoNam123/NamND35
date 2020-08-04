/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.dao.IMPL;

import com.bk.hust.dao.IUserDAO;
import com.bk.hust.mapper.UserMapper;
import com.bk.hust.model.UserModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPassWord(String userName, String passWord) {
        StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
        sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
        sql.append(" WHERE username = ? AND password = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), userName, passWord);
        return users.isEmpty() ? null : users.get(0);
    }

    

    @Override
    public boolean passwwordRecover(String userName, String email) {
        return false;
    }

    public static void main(String[] args) {
        System.out.println(new UserDAO().checkAccountByEmail("nguyenvana"));
    }

    @Override
    public boolean checkAccountByEmail(String email) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "SELECT email FROM user WHERE email='" + email + "'";
        try {
            connection = getConnectionJDBC();
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            return false;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }

                if (statement != null) {
                    statement.close();
                }

                if (rs != null) {
                    rs.close();
                }

            } catch (SQLException e) {
                return false;
            }
        }
        return false;
    }

    @Override
    public boolean checkAccountByUserName(String userName) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "SELECT username FROM user WHERE username='" + userName + "'";
        try {
            connection = getConnectionJDBC();
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            return false;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }

                if (statement != null) {
                    statement.close();
                }

                if (rs != null) {
                    rs.close();
                }

            } catch (SQLException e) {
                return false;
            }
        }
        return false;
    }

    @Override
    public Long addAccount(UserModel userModel) {
        String sql = "INSERT INTO user (username, password, email, roleid) VALUES(?,?,?,?)";
        return insert(sql, userModel.getUserName(), userModel.getPassword(), userModel.getEmail(), userModel.getRoleId());
    }

    @Override
    public UserModel findOne(Long id) {
        String sql = "SELECT * FROM user WHERE id=?";
        List<UserModel> user = query(sql, new UserMapper(), id);
        return user.isEmpty() ? null : user.get(0);
    }

    @Override
    public void update(UserModel updateModel) {
        StringBuilder sql = new StringBuilder("UPDATE user SET username = ?, password = ?,");
		sql.append(" fullname = ?, sdt = ?, email = ?, avatar=?, roleid=?");
		sql.append(" createddate = ?, createdby = ?, modifieddate = ?, modifiedby = ? WHERE id = ?");
		update(sql.toString(), updateModel.getUserName(), updateModel.getPassword(), updateModel.getFullName(),
				updateModel.getSdt(), updateModel.getAvatar(),updateModel.getRoleId(),updateModel.getCreatedDate(), 
				updateModel.getCreatedBy(), updateModel.getModifiedDate(), 
				updateModel.getModifiedBy(), updateModel.getId());
    }

    @Override
    public boolean sendMail(String to, String subject, String text) {
        Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465"); 
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("ebookhust99@gmail.com", "Bangtanboys99");
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress("ebookhust99@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
		} catch (MessagingException e) {
			return false;
		}
		return true;
    }

}
