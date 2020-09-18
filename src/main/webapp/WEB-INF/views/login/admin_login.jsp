<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${ctx}/assets/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/assets/css/sidebar.css">
    <title>管理员登录界面</title>
</head>
<body>
<%
String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
if (error != null)
	out.print(error);
%>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">管理员登录</h3>
                </div>
                <div class="panel-body">
                    <form id="loginform" role="form" method="post" action="${ctx}/login/validate">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="单位帐号" name="customerId" type="text" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="用户帐号" name="account" type="text" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="用户密码" name="password" type="password" value="">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="rememberMe" name="rememberMe" value="Remember Me">记住我
                                </label>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <input type="submit" id="btn_login" class="btn btn-lg btn-success btn-block" value="登录">
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>