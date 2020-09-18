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

<!-- CKEDITOR -->
<script type="text/javascript" src="${ctx}/assets1/js/ckeditor/ckeditor.js"></script>

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
					<h4 class="modal-title">收费标准内容编辑</h4>
				</div>
				<!-- ROW 2 -->
					<div class="row">
						<div class="col-md-12">
							<!-- CKE -->
							<div class="box border orange">
								<div class="box-title">
									<div class="tools hidden-xs">
										<a href="#box-config" data-toggle="modal" class="config">
											<i class="fa fa-cog"></i>
										</a>
										<a href="javascript:;" class="reload">
											<i class="fa fa-refresh"></i>
										</a>
										<a href="javascript:;" class="collapse">
											<i class="fa fa-chevron-up"></i>
										</a>
										<a href="javascript:;" class="remove">
											<i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="box-body">
									<textarea class="ckeditor" name="editor1"></textarea>
								</div>
							</div>
							<!-- /CKE -->
						</div>
					</div>
					<!-- /ROW 2 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关 闭</button>
					<button type="button" class="btn btn-primary">保 存</button>
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
								<li><i class="fa fa-home"></i> <a href="#">微信平台</a>
								</li>
								<li><a href="#">收费标准</a></li>
							</ul>
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
									<i class="fa fa-table"></i>收  费  标  准
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
								<table id="datatable1" cellpadding="0" cellspacing="0"
									border="0"
									class="datatable table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th class="text-center"><input type="checkbox"
												id="checkAll" name="checkAll"></th>
											<th class="text-center">所属单位</th>
											<th class="text-center">收费内容</th>
											<th class="text-center">更新日期</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
									<tfoot>
										<tr>
											<th class="text-center"><input type="checkbox"
												id="checkAll" name="checkAll"></th>
											<th class="text-center">所属单位</th>
											<th class="text-center">收费内容</th>
											<th class="text-center">更新日期</th>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<!-- /BOX -->
					</div>
				</div>
				<!-- /DATA TABLES -->
				<div class="separator"></div>
				<div class="footer-tools">
					<span class="go-top"> <i class="fa fa-chevron-up"></i> Top
					</span>
				</div>
			</div>
			<!-- /CONTENT-->
		</div>
	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document)
				.ready(
						function() {
							$('#datatable1')
									.DataTable(
											{
												ajax : {
													url : '${ctx}/organizationInfo/listCharges',
													dataSrc : ''
												},
												columns : [
														{
															'data' : 'chargesId',
															render : function(
																	data) {
																return "<input type='checkbox' name='dictCheck' value='" + data +"'>";
															}
														}, {
															'data' : 'organization'
														}, {
															'data' : 'chargesContent'
														}, {
															'data' : 'lastupdate'
														}],
												paging : false,
												searching : false,
												ordering : false,
												info : false
											});
						});
	</script>
</body>
</html>
