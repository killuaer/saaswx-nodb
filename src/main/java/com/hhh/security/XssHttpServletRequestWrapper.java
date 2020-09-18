package com.hhh.security;

import com.hhh.security.util.HTMLFilter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.util.Objects;

public class XssHttpServletRequestWrapper extends HttpServletRequestWrapper {

    HttpServletRequest orgRequest = null;
    private HTMLFilter htmlFilter;

    public XssHttpServletRequestWrapper(HttpServletRequest request) {
        super(request);
        htmlFilter = new HTMLFilter();
    }


    /**
     * 覆盖getParameter方法，将参数名和参数值都做xss过滤。<br/>
     * 如果需要获得原始的值，则通过super.getParameterValues(name)来获取<br/>
     * getParameterNames,getParameterValues和getParameterMap也可能需要覆盖
     */
    @Override
    public String getParameter(String name) {
        String value = super.getParameter((name));
        if (value != null) {
            value =  htmlFilter.filter(filterChar(value));
        }
        return value;
    }

    /**
     * 覆盖getHeader方法，将参数名和参数值都做xss过滤。<br/>
     * 如果需要获得原始的值，则通过super.getHeaders(name)来获取<br/>
     * getHeaderNames 也可能需要覆盖
     */
    @Override
    public String getHeader(String name) {
        String value = super.getHeader((name));
        if (value != null) {
            value =  htmlFilter.filter(filterChar(value));
        }
        return value;
    }

    @Override
    public String getQueryString() {
        String str = "";
        if (super.getQueryString() != null) {
            str = htmlFilter.filter(filterChar(super.getQueryString()));
        }
        return str;
    }

    @Override
    public String[] getParameterValues(String name) {
        String[] values = super.getParameterValues(name);
        if (values != null) {
            int length = values.length;
            String[] escapseValues = new String[length];
            for (int i = 0; i < length; i++) {
                if(Objects.equals("usn",name)||Objects.equals("passw",name)||Objects.equals("email",name)||Objects.equals("phone",name)){
                    escapseValues[i] = htmlFilter.filter(values[i]);
                }else{
                    escapseValues[i] = htmlFilter.filter(filterChar(values[i]));
                }
            }
            return escapseValues;
        }
        return super.getParameterValues(name);
    }

    public static String filterChar(String str) {
        String result = "";
        result = str.replaceAll("alert", "")
                .replaceAll("location", " ")
                .replaceAll("window", " ")
                .replaceAll("eval", " ")
                .replaceAll("document", " ")
                .replaceAll("onmouseover", " ")
                .replaceAll("onmousemove", " ");

        return filter(result);
    }


    public static String filter(String value) {
        if (value == null) {
            return null;
        }
        StringBuffer result = new StringBuffer(value.length());
        for (int i = 0; i < value.length(); ++i) {
            switch (value.charAt(i)) {
                case '<':
                    result.append("&lt;");
                    break;
                case '>':
                    result.append("&gt;");
                    break;
//                case '"':
//                    result.append("&quot;");
//                    break;
//                case '\'':
//                    result.append("&#39;");
//                    break;
//                case '%':
//                    result.append("&#37;");
//                    break;
//                case ';':
//                    result.append("&#59;");
//                    break;
//                case '(':
//                    result.append("&#40;");
//                    break;
//                case ')':
//                    result.append("&#41;");
//                    break;
//                case '&':
//                    result.append("&amp;");
//                    break;
//                case '+':
//                    result.append("&#43;");
//                    break;
                default:
                    result.append(value.charAt(i));
                    break;
            }
        }
        return result.toString();
    }
}
