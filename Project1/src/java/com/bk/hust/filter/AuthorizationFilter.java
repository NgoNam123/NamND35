/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bk.hust.filter;

import com.bk.hust.model.UserModel;
import com.bk.hust.utils.SessionUtil;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ngô Đức Nam
 */
@WebFilter("/AuthorizationFilter")
public class AuthorizationFilter implements Filter {

//    private ServletContext context;
//
//    @Override
//    public void init(FilterConfig filterConfig) throws ServletException {
//        this.context = filterConfig.getServletContext();
//    }
//
//    @Override
//    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
//        HttpServletRequest request = (HttpServletRequest) servletRequest;
//        HttpServletResponse response = (HttpServletResponse) servletResponse;
//        String url = request.getRequestURI();
//        if (url.startsWith("/admin")) {
//            UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
//            if (model != null) {
//                if (model.getRole().getCode().equals("ADMIN")) {
//                    filterChain.doFilter(servletRequest, servletResponse);
//                } else if (model.getRole().getCode().equals("USER")) {
//                    response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login");
//                }
//            } else {
//                response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login");
//            }
//        } else {
//            filterChain.doFilter(servletRequest, servletResponse);
//        }
//    }
//
//    @Override
//    public void destroy() {
//
//    }
    private ServletContext context;

    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        this.context = fConfig.getServletContext();
        this.context.log("AuthenticationFilter initialized");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();
        this.context.log("Requested Resource::" + uri);

        HttpSession session = req.getSession(false);

        if (uri.startsWith("/admin")) {
            this.context.log("Unauthorized access request");
            UserModel model = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
            if (model != null) {
                if (model.getRole().getCode().equals("ADMIN")) {
                    chain.doFilter(request, response);
                } else if (model.getRole().getCode().equals("USER")) {
                    res.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
                }
            }else{
                res.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
            }
            
            
        } else {
            // pass the request along the filter chain
            chain.doFilter(request, response);
        }

    }

    @Override
    public void destroy() {
        //close any resources here
    }
}
