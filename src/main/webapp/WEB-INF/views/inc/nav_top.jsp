<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- <link href="${ctx}/assets/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${ctx}/assets/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ctx}/assets/css/sidebar.css">
    <script src="${ctx}/assets/jquery/1.11.3/jquery.min.js"></script>
    <script src="${ctx}/assets/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
	<title>Top Nav</title>
</head>
<body>
	<!-- top nav -->
    <nav class="navbar navbar-default navbar-static-top " style="margin-bottom: 0">
        <div class="navbar-header">
            <a href="main.html" class="navbar-brand">管理控制台</a>
        </div>
        <!-- Top nav right icon-->
        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> 用户信息</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="admin_login.html"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- Top nav right icon-->
    </nav>
    <!-- End of top nav -->
</body>
</html>