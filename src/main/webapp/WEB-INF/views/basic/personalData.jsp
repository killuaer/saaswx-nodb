<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${ctx}/assets/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="${ctx}/assets/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/assets/bootstrap/3.3.5/js/bootstrap.min.js"></script>

	
<style>

.upside
{
margin:auto;
width:100%;
background-color:#b0c4de;
}

.table
{
margin:auto;
width:100%;
background-color:#ffffff;
}

</style>		
</head>
<body>
              <form id="personalForm" role="form" method="post">
                    <div class="upside">
                    <table class="table">
                        <tr algin="center">
						   <th class="text-center"><img src="${ctx}/assets/img/user-1.jpg" class="img-circle"></th>
						</tr>
						<tr algin="center">
						   <th class="text-center"><c:out value="覃业祥"/></th>
						</tr>
						<tr algin="center">
						   <th class="text-center"><c:out value="产品经理"/></th>
						</tr>
						<tr algin="center">
						   <th class="text-center"><c:out value="广州粤建三和软件股份有限公司"/></th>
						</tr>
                    </table>
                     </div>
                     <div class="table">   
                        <table class="table">
						   <tbody>
						      <tr>
						         <th width="50%">性别:</th>
						         <td width="50%"><c:out value="111"/></th>
						      </tr>
						      <tr>
						         <th>移动电话:</td>
						         <td><c:out value="222"/></td>
						      </tr>
						      <tr>
						         <th>固定电话:</td>
						         <td><c:out value=""/></td>
						      </tr>
						      <tr>
						         <th>传真:</td>
						         <td><c:out value=""/></td>
						      </tr>
						      <tr>
						         <th>电子邮箱:</td>
						         <td><c:out value=""/></td>
						      </tr>
						      <tr>
						         <th>地址:</td>
						         <td><c:out value=""/></td>
						      </tr>
						      <tr>
						         <th>网址:</td>
						         <td><c:out value=""/></td>
						      </tr>
						   </tbody>
						</table>
                       </div>

                        <%-- <div class="form-group">
                            <label for="basEtp_name" class="control-label">性别:</label>
                            <c:out value="${}"/>
                        </div>
                        <div class="form-group">
                            <label for="basEtp_address" class="control-label">移动电话:</label>
                            <c:out value="${}"/>
                        </div>
                        <div class="form-group">
                            <label for="basEtp_zipCode" class="control-label">固定电话:</label>
                            <c:out value="${}"/>
                        </div>
                        <div class="form-group">
                            <label for="basEtp_lxrTel" class="control-label">传真:</label>
                            <c:out value="${}"/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">电子邮箱:</label>
                            <c:out value="${}"/>
                        </div>
                         <div class="form-group">
                            <label for="basEtp_etpUrl" class="control-label">地址:</label>
                            <c:out value="${}"/>
                        </div>
                         <div class="form-group">
                            <label for="" class="control-label">网址:</label>
                            <c:out value="${}"/>
                         </div> --%>
</body>
</html>