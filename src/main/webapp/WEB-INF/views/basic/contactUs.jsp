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
</head>
<body>
<%--       <div class="">
            <div class="">
                <div class="">
                    <form id="basEtpForm" role="form" method="post">
                        <div class="form-group">
                            <label for="basEtp_name" class="control-label">公司名称:</label>
                           
                        </div>
                        <div class="form-group">
                            <label for="basEtp_address" class="control-label">公司地址:</label>
                            <c:out value="${basEtp.address}"/>
                        </div>
                        <div class="form-group">
                            <label for="basEtp_zipCode" class="control-label">邮编:</label>
                            <c:out value="${basEtp.zipCode}"/>
                        </div>
                        <div class="form-group">
                            <label for="basEtp_lxrTel" class="control-label">电话:</label>
                            <c:out value="${basEtp.lxrTel}"/>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">客服热线:</label>
                            <c:out value=""/>
                        </div>
                         <div class="form-group">
                            <label for="basEtp_etpUrl" class="control-label">服务网站:</label>
                            <c:out value="${basEtp.etpUrl}"/>
                        </div>
                         <div class="form-group">
                            <label for="" class="control-label">客服企业qq:</label>
                            <c:out value=""/>
                         </div>
                        <div class="form-group">
                            <label for="basEtp_fax" class="control-label">传真:</label>
                            <c:out value="${basEtp.fax}"/>
                        </div>
                         <div class="form-group">
                            <label for="basEtp_etpEmail" class="control-label">E_mail:</label>
                            <c:out value="${basEtp.etpEmail}"/>
                        </div>
                </div>
            </div>
        </div> --%>
        
        <div class="table-responsive">
			   <table class="table">
			      <tbody>
			         <tr>
			            <th> 公司名称</th>
			            <td>清远市建设工程质量检测站</td>
			         </tr>
			     
			         <tr>
			            <th> 公司地址</th>
			            <td>清远市新城八号区鹿鸣路1号（越君东方苑）</td>
			         </tr>
			         <tr>
			            <th> 邮编</th>
			            <td>511515</td>
			         </tr>
			         <tr>
			            <th> 电话</th>
			            <td>0763-3867896</td>
			         </tr>
			         <tr>
			            <th> 客服热线</th>
			            <td><c:out value=""/></td>
			         </tr>
			         <tr>
			            <th> 服务网站</th>
			            <td><c:out value="${basEtp.etpUrl}"/></td>
			         </tr>
			         <tr>
			            <th> 客服企业qq</th>
			            <td></td>
			         </tr>
			         <tr>
			            <th> 传真</th>
			            <td>0763-3788496</td>
			         </tr>
			         <tr>
			            <th> E_mail</th>
			            <td><c:out value="${basEtp.etpEmail}"/></td>
			         </tr>
			      </tbody>
			   </table>
       </div>
</body>
</html>