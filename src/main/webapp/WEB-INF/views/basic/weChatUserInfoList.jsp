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
								<li><i class="fa fa-home"></i> <a href="#">微信平台</a>
								</li>
								<li><a href="#">微信用户信息</a></li>
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
									<i class="fa fa-table"></i>Dynamic Data Tables
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
											<th class="text-center">openId</th>
											<th class="text-center">用户昵称</th>
											<th class="text-center">性别</th>
											<th class="text-center">国家</th>
											<th class="text-center">身份</th>
											<th class="text-center">城市</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
									<tfoot>
										<tr>
											<th class="text-center"><input type="checkbox"
												id="checkAll" name="checkAll"></th>
											<th class="text-center">openId</th>
											<th class="text-center">用户昵称</th>
											<th class="text-center">性别</th>
											<th class="text-center">国家</th>
											<th class="text-center">身份</th>
											<th class="text-center">城市</th>
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
				<!-- TABLE IN MODAL -->
				<div class="row">
					<div class="col-md-6">
						<!-- BOX -->
						<div class="box solid grey">
							<div class="box-title">
								<h4>
									<i class="fa fa-bars"></i>Table in Modal
								</h4>
								<div class="tools">
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
								<a href="#table-modal" data-toggle="modal"
									class="btn btn-primary">Click here to show table</a>
							</div>
						</div>
						<!-- /BOX -->
					</div>
				</div>
				<!-- /TABLE IN MODAL -->
				<!-- SAMPLE BOX CONFIGURATION MODAL FORM-->
				<div class="modal fade" id="table-modal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content modal-table">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">Table inside a Modal</h4>
							</div>
							<div class="modal-body">
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /SAMPLE BOX CONFIGURATION MODAL FORM-->
				<div class="separator"></div>
				<!-- EXPORT TABLES -->
				<div class="row">
					<div class="col-md-12">
						<!-- BOX -->
						<div class="box border purple">
							<div class="box-title">
								<h4>
									<i class="fa fa-table"></i>Copy, Print, CSV, Excel, PDF
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
								<table id="datatable2" cellpadding="0" cellspacing="0"
									border="0"
									class="datatable table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>Rendering engine</th>
											<th>Browser</th>
											<th class="hidden-xs">Platform(s)</th>
											<th>Engine version</th>
											<th class="hidden-xs">CSS grade</th>
										</tr>
									</thead>
									<tbody>
										<tr class="gradeX">
											<td>Trident</td>
											<td>Internet Explorer 4.0</td>
											<td class="hidden-xs">Win 95+</td>
											<td class="center">4</td>
											<td class="center hidden-xs">X</td>
										</tr>
										<tr class="gradeC">
											<td>Trident</td>
											<td>Internet Explorer 5.0</td>
											<td class="hidden-xs">Win 95+</td>
											<td class="center">5</td>
											<td class="center hidden-xs">C</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>Internet Explorer 5.5</td>
											<td class="hidden-xs">Win 95+</td>
											<td class="center">5.5</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>Internet Explorer 6</td>
											<td class="hidden-xs">Win 98+</td>
											<td class="center">6</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>Internet Explorer 7</td>
											<td class="hidden-xs">Win XP SP2+</td>
											<td class="center">7</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Trident</td>
											<td>AOL browser (AOL desktop)</td>
											<td class="hidden-xs">Win XP</td>
											<td class="center">6</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 1.0</td>
											<td class="hidden-xs">Win 98+ / OSX.2+</td>
											<td class="center">1.7</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 1.5</td>
											<td class="hidden-xs">Win 98+ / OSX.2+</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 2.0</td>
											<td class="hidden-xs">Win 98+ / OSX.2+</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Firefox 3.0</td>
											<td class="hidden-xs">Win 2k+ / OSX.3+</td>
											<td class="center">1.9</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Camino 1.0</td>
											<td class="hidden-xs">OSX.2+</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Camino 1.5</td>
											<td class="hidden-xs">OSX.3+</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Netscape 7.2</td>
											<td class="hidden-xs">Win 95+ / Mac OS 8.6-9.2</td>
											<td class="center">1.7</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Netscape Browser 8</td>
											<td class="hidden-xs">Win 98SE+</td>
											<td class="center">1.7</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Netscape Navigator 9</td>
											<td class="hidden-xs">Win 98+ / OSX.2+</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.0</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">1</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.1</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">1.1</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.2</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">1.2</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.3</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">1.3</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.4</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">1.4</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.5</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">1.5</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.6</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">1.6</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.7</td>
											<td class="hidden-xs">Win 98+ / OSX.1+</td>
											<td class="center">1.7</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Mozilla 1.8</td>
											<td class="hidden-xs">Win 98+ / OSX.1+</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Seamonkey 1.1</td>
											<td class="hidden-xs">Win 98+ / OSX.2+</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Gecko</td>
											<td>Epiphany 2.20</td>
											<td class="hidden-xs">Gnome</td>
											<td class="center">1.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 1.2</td>
											<td class="hidden-xs">OSX.3</td>
											<td class="center">125.5</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 1.3</td>
											<td class="hidden-xs">OSX.3</td>
											<td class="center">312.8</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 2.0</td>
											<td class="hidden-xs">OSX.4+</td>
											<td class="center">419.3</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>Safari 3.0</td>
											<td class="hidden-xs">OSX.4+</td>
											<td class="center">522.1</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>OmniWeb 5.5</td>
											<td class="hidden-xs">OSX.4+</td>
											<td class="center">420</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>iPod Touch / iPhone</td>
											<td class="hidden-xs">iPod</td>
											<td class="center">420.1</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Webkit</td>
											<td>S60</td>
											<td class="hidden-xs">S60</td>
											<td class="center">413</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 7.0</td>
											<td class="hidden-xs">Win 95+ / OSX.1+</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 7.5</td>
											<td class="hidden-xs">Win 95+ / OSX.2+</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 8.0</td>
											<td class="hidden-xs">Win 95+ / OSX.2+</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 8.5</td>
											<td class="hidden-xs">Win 95+ / OSX.2+</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 9.0</td>
											<td class="hidden-xs">Win 95+ / OSX.3+</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 9.2</td>
											<td class="hidden-xs">Win 88+ / OSX.3+</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera 9.5</td>
											<td class="hidden-xs">Win 88+ / OSX.3+</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Opera for Wii</td>
											<td class="hidden-xs">Wii</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Nokia N800</td>
											<td class="hidden-xs">N800</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>Presto</td>
											<td>Nintendo DS browser</td>
											<td class="hidden-xs">Nintendo DS</td>
											<td class="center">8.5</td>
											<td class="center hidden-xs">C/A<sup>1</sup></td>
										</tr>
										<tr class="gradeC">
											<td>KHTML</td>
											<td>Konqureror 3.1</td>
											<td class="hidden-xs">KDE 3.1</td>
											<td class="center">3.1</td>
											<td class="center hidden-xs">C</td>
										</tr>
										<tr class="gradeA">
											<td>KHTML</td>
											<td>Konqureror 3.3</td>
											<td class="hidden-xs">KDE 3.3</td>
											<td class="center">3.3</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeA">
											<td>KHTML</td>
											<td>Konqureror 3.5</td>
											<td class="hidden-xs">KDE 3.5</td>
											<td class="center">3.5</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeX">
											<td>Tasman</td>
											<td>Internet Explorer 4.5</td>
											<td class="hidden-xs">Mac OS 8-9</td>
											<td class="center">-</td>
											<td class="center hidden-xs">X</td>
										</tr>
										<tr class="gradeC">
											<td>Tasman</td>
											<td>Internet Explorer 5.1</td>
											<td class="hidden-xs">Mac OS 7.6-9</td>
											<td class="center">1</td>
											<td class="center hidden-xs">C</td>
										</tr>
										<tr class="gradeC">
											<td>Tasman</td>
											<td>Internet Explorer 5.2</td>
											<td class="hidden-xs">Mac OS 8-X</td>
											<td class="center">1</td>
											<td class="center hidden-xs">C</td>
										</tr>
										<tr class="gradeA">
											<td>Misc</td>
											<td>NetFront 3.1</td>
											<td class="hidden-xs">Embedded devices</td>
											<td class="center">-</td>
											<td class="center hidden-xs">C</td>
										</tr>
										<tr class="gradeA">
											<td>Misc</td>
											<td>NetFront 3.4</td>
											<td class="hidden-xs">Embedded devices</td>
											<td class="center">-</td>
											<td class="center hidden-xs">A</td>
										</tr>
										<tr class="gradeX">
											<td>Misc</td>
											<td>Dillo 0.8</td>
											<td class="hidden-xs">Embedded devices</td>
											<td class="center">-</td>
											<td class="center hidden-xs">X</td>
										</tr>
										<tr class="gradeX">
											<td>Misc</td>
											<td>Links</td>
											<td class="hidden-xs">Text only</td>
											<td class="center">-</td>
											<td class="center hidden-xs">X</td>
										</tr>
										<tr class="gradeX">
											<td>Misc</td>
											<td>Lynx</td>
											<td class="hidden-xs">Text only</td>
											<td class="center">-</td>
											<td class="center hidden-xs">X</td>
										</tr>
										<tr class="gradeC">
											<td>Misc</td>
											<td>IE Mobile</td>
											<td class="hidden-xs">Windows Mobile 6</td>
											<td class="center">-</td>
											<td class="center hidden-xs">C</td>
										</tr>
										<tr class="gradeC">
											<td>Misc</td>
											<td>PSP browser</td>
											<td class="hidden-xs">PSP</td>
											<td class="center">-</td>
											<td class="center hidden-xs">C</td>
										</tr>
										<tr class="gradeU">
											<td>Other browsers</td>
											<td class="hidden-xs">All others</td>
											<td>-</td>
											<td class="center">-</td>
											<td class="center hidden-xs">U</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<th>Rendering engine</th>
											<th>Browser</th>
											<th class="hidden-xs">Platform(s)</th>
											<th>Engine version</th>
											<th class="hidden-xs">CSS grade</th>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<!-- /BOX -->
					</div>
				</div>
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
		$(document)
				.ready(
						function() {
							$('#datatable1')
									.DataTable(
											{
												ajax : {
													url : '${ctx}/wechatuserinfo/listWeChatUserInfo',
													dataSrc : ''
												},
												columns : [
														{
															'data' : 'openId',
															render : function(
																	data) {
																return "<input type='checkbox' name='dictCheck' value='" + data +"'>";
															}
														}, {
															'data' : 'openId'
														}, {
															'data' : 'nickname'
														}, {
															'data' : 'sex'
														}, {
															'data' : 'country'
														}, {
															'data' : 'province'
														}, {
															'data' : 'city'
														} ],
												paging : false,
												searching : false,
												ordering : false,
												info : false
											});
						});
	</script>
</body>
</html>
