package com.hhh.security;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class XssFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse resp = (HttpServletResponse)response;

        resp.setHeader("Set-Cookie", "HttpOnly");
        resp.setHeader("X-Frame-Options","sameorigin");
        resp.setHeader("X-XSS-Protection", "1;mode=block");
        resp.setHeader("X-Content-Type-Options", "nosniff");
        resp.setHeader("Content-Security-Policy", " object-src 'none';");

        String method = req.getMethod();
        String uri = req.getRequestURI();

       /* if(Objects.equals("POST",method)&&!(uri.indexOf("/homePage/getNavPath")>-1)&&!(uri.indexOf("/homePage/ajaxLogin")>-1)){
            System.out.println(uri+": 需要token验证");
            String csrfToken = req.getParameter("CSRFTOKEN");
            Cookie[] cookies = req.getCookies();
            String cookieToken = "";
            for(int i = 0; i < cookies.length; i++) {
                Cookie cookie = cookies[i];
                String v = cookie.getValue();
                String n = cookie.getName();
                if(Objects.equals("CSRFTOKEN",n)){
                    cookieToken = v;
                }
            }

            if(!Objects.equals(cookieToken,csrfToken)){
                RequestDispatcher dispatcher =request.getRequestDispatcher("../admin/backMain");
                dispatcher.forward(request,response);
                return;
            }else{
                XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest) request);
                chain.doFilter(xssRequest, response);
            }
        }else{
            XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest) request);
            chain.doFilter(xssRequest, response);
        }*/

        XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest) request);
        chain.doFilter(xssRequest, response);

    }

    public void destroy() {
    }
}

