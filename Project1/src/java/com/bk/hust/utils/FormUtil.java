/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.utils;

import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.beanutils.BeanUtils;

public class FormUtil {
    public static <T> T toModel(Class<T> tclass, HttpServletRequest request){
        T object=null;
        try {
            object=(T)tclass.newInstance();
            BeanUtils.populate(object, request.getParameterMap());
        } catch (InstantiationException | IllegalAccessException |InvocationTargetException e1) {
            Logger.getLogger(FormUtil.class.getName()).log(Level.SEVERE, null, e1);
        } 
        return object;
    }
}
