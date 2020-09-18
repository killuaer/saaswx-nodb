<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>报告进度查询</title>
<meta charset="utf-8" />
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<link href="${ctx}/assets/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${ctx}/assets/fontawesome/css/font-awesome.min.css" />
<link href="${ctx}/assets/metisMenu/2.2.0/metisMenu.min.css" rel="stylesheet" />
<script src="${ctx}/assets/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/assets/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
table thead th {
	height: 35px;
	border: 0;
	border-bottom: 1px solid #ddd;
	color: #FFFFFF;
	font-size: 95%;
	padding: 3px 0;
	margin: 0 0 5px 0;
	text-align: center;
	background-color: #307ecc;
}

table tbody tr:hover {
	background-color: #87CEFA;
}

table tbody tr {
	font-size: 90%;
	border: 1px solid #A8A8A8;
}

#table-body {
	margin: 0 -16px 0;
}

#form-select {
	margin: 5px 0 -10px 0;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 15px;
}

#form-input {
	margin: 5px 0 -10px 0;
	padding-top: 0px;
	padding-right: 15px;
	padding-bottom: 0px;
	padding-left: 0px;
}
</style>
<script>
	function nextPage(pageNum) {
		$("#mainForm").attr("action",
				"${ctx}/report/reportList?page=" + pageNum);
		$("#mainForm").submit();
	}

	function prePage(pageNum) {
		$("#mainForm").attr("action",
				"${ctx}/report/reportList?page=" + pageNum);
		$("#mainForm").submit();
	}

	function firstPage() {
		$("#mainForm").attr("action", "${ctx}/report/reportList?page=1");
		$("#mainForm").submit();
	}

	function lastPage(pageNum) {
		$("#mainForm").attr("action",
				"${ctx}/report/reportList?page=" + pageNum);
		$("#mainForm").submit();
	}
</script>
</head>
<body>
	<div class="container-fluid" id="table-body">
		<form id="mainForm" name="mainForm" role="form" method="post" class="form-inline" action="${ctx}/report/reportList">
			<div class="row">
				<div class="col-xs-4" id="form-select">
					<div class="form-group">
						<c:choose>
							<c:when test="${jcsBean.numType == 'olWtNum'||jcsBean.numType == null}">
								<select class="form-control" name="numType">
									<option value="olWtNum" selected="selected">样品编号</option>
									<option value="prtnum">报告编号</option>
								</select>
							</c:when>
							<c:otherwise>
								<select class="form-control" name="numType">
									<option value="olWtNum">样品编号</option>
									<option value="prtnum" selected="selected">报告编号</option>
								</select>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="col-xs-8" id="form-input">
					<div class="input-group">
						<input type="text" class="form-control" name="queryNum" value="${jcsBean.queryNum}" placeholder="查询...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</div>
			</div>
		</form>
		<div class="row">
			<div class="col-xs-12">
				<table class="table table-striped  text-center table-condensed" style="table-layout: fixed; word-wrap: break-word;">
					<thead>
						<tr>
							<th style="width: 10%; overflow: hidden;">序号</th>
							<th>样品编号</th>
							<th>报告编号</th>
							<th>检测项目</th>
							<th>检测状态</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty jcss}">
							<tr>
								<td colspan="5"><font color="#0000CD">未查询到相关记录</font></td>
							</tr>
						</c:if>
						<c:if test="${!empty jcss}">
							<c:forEach items="${jcss}" var="jcs" varStatus="i">
								<tr>
									<td style="width: 10%; overflow: hidden;">${i.index + 1 }</td>
									<td><c:out value="${jcs.phNum}"></c:out></td>
									<td><c:out value="${jcs.prtnum}"></c:out></td>
									<td><c:out value="${jcs.xmName}"></c:out></td>
									<td><font color="#0000CD"><c:out value="${jcs.dataIp}"></font> </c:out></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<!-- pagination -->
			<div class="col-xs-12 text-center">
				<c:if test="${totalNum > 0}">
				第
				<c:out value="${pageNum }" />
				页/共
				<c:out value="${totalPageNum }" />
				页/共
				<c:out value="${totalNum }" />
				条记录
			</c:if>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 text-center">
				<ul class="pagination" style="margin: 0px">
					<c:if test="${pageNum > 1}">
						<li><a href="#" onclick="firstPage()">首页</a></li>
					</c:if>
					<c:if test="${pageNum > 1 }">
						<li><a href="#" onclick="prePage('${pageNum - 1}')">上一页</a></li>
					</c:if>
					<c:if test="${pageNum < totalPageNum }">
						<li><a href="#" onclick="nextPage('${pageNum + 1}')">下一页</a></li>
					</c:if>
					<c:if test="${pageNum < totalPageNum }">
						<li><a href="#" onclick="lastPage('${totalPageNum}')">最后一页</a></li>
					</c:if>
				</ul>
			</div>
			<!-- End pagination -->
		</div>
	</div>
</body>
</html>