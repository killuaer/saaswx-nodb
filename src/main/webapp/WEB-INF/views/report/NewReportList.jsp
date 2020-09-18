<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>报告进度查询</title>
<meta charset="utf-8" />
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" /> -->

<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
<link href="${ctx}/assets/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${ctx}/assets/fontawesome/css/font-awesome.min.css" />
<link href="${ctx}/assets/metisMenu/2.2.0/metisMenu.min.css"
	rel="stylesheet" />

<script src="${ctx}/assets/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/assets/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
</style>

<script>
	function validate() {
		var num = $("#queryNum").val();
		if (num == null || '' == num) {
			alert("请输入报告编号或工程名称查询！");
			return;
		}
		document.forms['mainForm'].submit();
	}
	function nextPage(pageNum) {
		$("#mainForm").attr("action",
				"${ctx}/report/NewReportList?page=" + pageNum);
		$("#mainForm").submit();
	}

	function prePage(pageNum) {
		$("#mainForm").attr("action",
				"${ctx}/report/NewReportList?page=" + pageNum);
		$("#mainForm").submit();
	}

	function firstPage() {
		$("#mainForm").attr("action", "${ctx}/report/NewReportList?page=1");
		$("#mainForm").submit();
	}

	function lastPage(pageNum) {
		$("#mainForm").attr("action",
				"${ctx}/report/NewReportList?page=" + pageNum);
		$("#mainForm").submit();
	}
</script>
</head>
<body>
	<div class="page-header text-center">
		<h4>检测微服务平台</h4>
	</div>
	<div class="container-fluid">
		<ul class="list-group">
			<li class="list-group-item text-center">
				<form class="form-search form-inline" id="mainForm" role="form"
					method="post" action="${ctx}/report/NewReportList">
					<div class="form-group">
						<c:choose>
							<c:when
								test="${jcsBean.numType == 'prtnum'|| jcsBean.numType == null}">
								<select class="form-control" name="numType">
									<option value="prtnum" selected="selected">报告编号</option>
									<option value="gcName">工程名称</option>
								</select>
							</c:when>
							<c:otherwise>
								<select class="form-control" name="numType">
									<option value="prtnum">报告编号</option>
									<option value="gcName" selected="selected">工程名称</option>
								</select>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="input-group">
						<input type="text" class="form-control" id="queryNum"
							name="queryNum" value="${jcsBean.queryNum}"
							placeholder="请输入编号查询..." /> <span class="input-group-btn">
							<input class="btn btn-primary" type="button" value="查询"
							onclick="validate()" />
						</span>
					</div>
				</form>
			</li>
			<li class="list-group-item active text-center">报 告 进 度 列 表</li>
			<c:if test="${!empty jcss}">
				<c:forEach items="${jcss}" var="jcs" varStatus="i">
					<li class="list-group-item ">
						<p class="list-group-item-text">
							电子委托编号：
							<c:out value="${jcs.prtnum}"></c:out>
						</p>
						<p class="list-group-item-text">
							报告编号：
							<c:out value="${jcs.prtnum}"></c:out>
						</p>
						<p class="list-group-item-text">
							检测项目：
							<c:out value="${jcs.xmName}"></c:out>
						</p>
						<p class="list-group-item-text">
							检测进度： <font color="#0000CD"><c:out value="${jcs.dataIp}"></c:out></font>
						</p>
					</li>
				</c:forEach>
			</c:if>
			<c:if test="${empty jcss}">
				<li class="list-group-item text-center"><font color="#0000CD">未查询到相关记录</font></li>
			</c:if>
			<li class="list-group-item text-center">
				<div class="text-center">
					<!-- pagination -->
					第
					<c:out value="${pageNum }" />
					页/共
					<c:out value="${totalPageNum }" />
					页/共
					<c:out value="${totalNum }" />
					条记录
				</div>
				<div class="text-center">
					<ul class="pagination">
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
			</li>
		</ul>
	</div>
</body>
</html>