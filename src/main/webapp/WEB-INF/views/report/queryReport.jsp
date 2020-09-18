<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<link href="${ctx}/assets/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${ctx}/assets/fontawesome/css/font-awesome.min.css" />
<link href="${ctx}/assets/metisMenu/2.2.0/metisMenu.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="${ctx}/assets/css/thePage.css" />
<script src="${ctx}/assets/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/assets/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="${ctx}/assets/metisMenu/2.2.0/metisMenu.min.js"></script>
<script type="text/javascript" src="${ctx}/assets/js/thePage.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	  		<script type='text/javascript' src="${ctx}/assets/bootstrap/respond.min.js"></script>
	  		<script type='text/javascript' src="${ctx}/assets/bootstrap/html5shiv.min.js"></script>
		<![endif]-->
</head>
<body>
	<div id="wrapper">
		<!-- 回到最顶端的按钮 -->
		<div id="scrollpoint" class="hidden">
			<a class="goup" href="#"> <i class="fa fa-angle-up fa-3x"></i>
			</a>
		</div>
		<!-- top nav -->
		<jsp:include page="../inc/nav_top.jsp"></jsp:include>
		<!-- End of top nav -->
		<!-- sidebar -->
		<jsp:include page="../inc/sidebar.jsp"></jsp:include>
		<!-- End of sidebar -->
		<!-- Main Content -->
		<div id="showspace">
			<div class=" row">
				<div class="col-lg-12">
					<h1 class="header">报告进度查询</h1>
				</div>
			</div>
			<!-- panel -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<!--   <div class="panel-heading">
                           	 
                        </div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<!-- <nav class="navbar navbar-default" role="navigation">
								<div class="navbar-header">
									
									 <select class="navbar-brand">
									     <option>电子委托编号</option>
									     <option>报告编号</option>
								     </select>
								</div>
								<div>
									<form class="navbar-form navbar-left" role="search">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Search">
										</div>
										<button type="submit" class="btn btn-default">查询</button>
									</form>
								</div>
							</nav> -->

							<div class="container-fluid">
								<form id="mainForm" method="post" class="form-inline">
									<div class="row">
										<div class="col-sm-12"
											style="margin-left: 0px; margin-bottom: 5px">
											<div class="input-group ">
											   <span class="input-group-btn">
											     <select class="form-control">
													<option>电子委托编号</option>
													<option>报告编号</option>
												 </select>
												</span>
												<input type="text" class="form-control"
													placeholder="Search..."> <span
													class="input-group-btn">
													<button class="btn btn-default" type="button">
														<i class="fa fa-search"></i>
													</button>
												</span>
											</div>
										</div>
									</div>
								</form>
								<div class="row">
									<div class="col-sm-12">
										<!-- data table -->
										<div class="dataTable_wrapper">
											<table
												class="table table-striped table-bordered table-hover text-center"
												id="dict">
												<thead>
													<tr>
														<th class="text-center">序号</th>
														<th class="text-center">电子委托编号</th>
														<th class="text-center">报告编号</th>
														<th class="text-center">检测项目</th>
														<th class="text-center">检测状态</th>
													</tr>
												</thead>
												<tbody>
													<c:if test="${empty ecss}">
														<tr>
															<td colspan="6">没有查询到相关记录</td>
														</tr>
													</c:if>
													<c:if test="${!empty ecss}">
														<c:forEach items="${ecss}" var="ecs" varStatus="i">
															<tr>
																<td><c:out value="${i.index + 1 }" /></td>
																<td><c:out value="${ecs.olWtNum}"></c:out></td>
																<td><c:out value="${ecs.prtnum}"></c:out></td>
																<td><c:out value="${ecs.xmName}"></c:out></td>
																<td><c:out value="${ecs.dataIp}"></c:out></td>
															</tr>
														</c:forEach>
													</c:if>
												</tbody>
											</table>
										</div>
										<!-- data table -->
									</div>
								</div>
								<div class="row">
									<!-- pagination -->
									<div class="col-sm-6">
										第
										<c:out value="${pageNum }" />
										页/共
										<c:out value="${totalPageNum }" />
										页
									</div>
									<div class="col-sm-6">
										<ul class="pagination navbar-right" style="margin: 0px">

											<c:if test="${pageNum > 1}">
												<li><a href="${ctx}/report/reportList1?page=1">首页</a></li>
											</c:if>
											<c:if test="${pageNum > 1 }">
												<li><a
													href="${ctx}/report/reportList1?page=${pageNum - 1}">上一页</a></li>
											</c:if>
											<c:if test="${pageNum < totalPageNum }">
												<li><a
													href="${ctx}/report/reportList1?page=${pageNum + 1}">下一页</a></li>
											</c:if>
											<c:if test="${pageNum < totalPageNum }">
												<li><a
													href="${ctx}/report/reportList1?page=${totalPageNum}">最后一页</a></li>
											</c:if>
										</ul>
									</div>
									<!-- End pagination -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end panel -->
		</div>
		<!-- End of Main Content -->
	</div>
</body>
</html>