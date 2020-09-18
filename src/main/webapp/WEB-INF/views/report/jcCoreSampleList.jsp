<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title></title>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<!-- SAMPLE BOX CONFIGURATION MODAL FORM-->
	<div class="modal fade" id="box-config" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Box Settings</h4>
				</div>
				<div class="modal-body">Here goes box setting content.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /SAMPLE BOX CONFIGURATION MODAL FORM-->
	<div class="row">
		<div id="content" class="col-lg-12">
			<!-- PAGE HEADER-->
			<div class="row">
				<div class="col-sm-12">
					<div class="page-header">
						<!-- STYLER -->

						<!-- /STYLER -->
						<!-- BREADCRUMBS -->
						<ul class="breadcrumb">
							<li><i class="fa fa-home"></i> <a href="#">微信平台</a></li>
							<li><a href="#">样品信息</a></li>
						</ul>
						<!-- /BREADCRUMBS -->
						<!-- 	<div class="clearfix">
								<h3 class="content-title pull-left">Dynamic Tables</h3>
							</div>
							<div class="description">Dynamic Tables and Modals</div> -->
					</div>
				</div>
			</div>
			<!-- /PAGE HEADER -->
			<!-- DATA TABLES -->
			<div class="row">
				<div class="col-md-12">
					<!-- BOX -->
					<div class="box border green">
						<div class="box-title">
							<h4>
								<i class="fa fa-table"></i>样品信息
							</h4>
							<div class="tools hidden-xs">
								<a href="#box-config" data-toggle="modal" class="config"> <i
									class="fa fa-cog"></i>
								</a> <a href="javascript:;" class="reload"> <i
									class="fa fa-refresh"></i>
								</a> <a href="javascript:;" class="collapse"> <i
									class="fa fa-chevron-up"></i>
								</a> <a href="javascript:;" class="remove"> <i
									class="fa fa-times"></i>
								</a>
							</div>
						</div>
						<div class="box-body">
							<div class="dataTable_wrapper">
								<table id="datatable1" cellpadding="0" cellspacing="0"
									border="0"
									class="datatable table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th class="text-center"><input type="checkbox"
												id="checkAll" name="checkAll"></th>
											<th class="text-center">电子委托编号</th>
											<th class="text-center">样品编号</th>
											<th class="text-center">报告编号</th>
											<th class="text-center">委托单位</th>
											<th class="text-center">工程名称</th>
											<th class="text-center">检测项目</th>
											<th class="text-center">检测状态</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
									<tfoot>
										<tr>
											<th class="text-center"><input type="checkbox"
												id="checkAll" name="checkAll"></th>
											<th class="text-center">电子委托编号</th>
											<th class="text-center">样品编号</th>
											<th class="text-center">报告编号</th>
											<th class="text-center">委托单位</th>
											<th class="text-center">工程名称</th>
											<th class="text-center">检测项目</th>
											<th class="text-center">检测状态</th>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
					<!-- /BOX -->
				</div>
			</div>
			<!-- /DATA TABLES -->
			<!-- /EXPORT TABLES -->
			<div class="footer-tools">
				<span class="go-top"> <i class="fa fa-chevron-up"></i> Top
				</span>
			</div>
		</div>
		<!-- /CONTENT-->
	</div>
	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		// 页面初始化
		$(document)
				.ready(
						function() {
							// 初始化内容UI
							$('#datatable1')
									.DataTable(
											{
												ajax : {
													url : '${ctx}/jcCoreSampleTest/jcCoreSampleList',
													dataSrc : ''
												},
												columns : [
														{
															'data' : 'syNum',
															render : function(
																	data) {
																return "<input type='checkbox' class='text-center' name='dictCheck' value='" + data +"'>";
															}
														}, {
															'data' : 'olWtNum'
														}, {
															'data' : 'phNum'
														}, {
															'data' : 'prtnum'
														}, {
															'data' : 'wtUnit'
														}, {
															'data' : 'gcName'
														}, {
															'data' : 'xmName'
														}, {
															'data' : 'dataIp'
														} ],
												paging : true,
												searching : true,
												ordering : true,
												info : true
											});
						});
	</script>
</body>
</html>
