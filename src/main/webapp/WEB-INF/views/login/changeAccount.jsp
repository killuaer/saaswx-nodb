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
<link rel="stylesheet"
	href="${ctx}/assets/fontawesome/css/font-awesome.min.css" />
<link href="${ctx}/assets/metisMenu/2.2.0/metisMenu.min.css"
	rel="stylesheet" />
<script src="${ctx}/assets/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/assets/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/assets1/js/select2/select2.min.css" />
<script type="text/javascript"
	src="${ctx}/assets1/js/select2/select2.min.js"></script>
<script type="text/javascript"
	src="${ctx}/assets/jquery.validate.min.js"></script>
<title>单位帐号切换</title>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("#loginform").validate(
						{
							rules : {
								customerId : "required",
								account : "required",
								password : "required",
								customerId : {
									required : true,
									minlength : 1
								},
								account : {
									required : true,
									minlength : 5
								},
								password : {
									required : true,
									minlength : 6
								}
							},
							messages : {
								customerId : "请输入检测单位",
								account : "请输入用户帐号",
								password : "请输入密码",
								customerId : {
									required : "请输入检测单位",
									minlength : "检测单位名称不能小于1个字符"
								},
								account : {
									required : "请输入您的用户帐号",
									minlength : "用户名不能小于5个字符"
								},
								password : {
									required : "请输入密码",
									minlength : "密码长度不能小于6位"
								}
							},
							errorElement : "em",
							errorPlacement : function(error, element) {
								// Add the `help-block` class to the error element
								error.addClass("help-block");

								if (element.prop("type") === "checkbox") {
									error.insertAfter(element.parent("label"));
								} else {
									error.insertAfter(element);
								}
							},
							highlight : function(element, errorClass,
									validClass) {
								$(element).parents().addClass("has-error")
										.removeClass("has-success");
							},
							unhighlight : function(element, errorClass,
									validClass) {
								$(element).parents().addClass("has-success")
										.removeClass("has-error");
							}
						});
			});
</script>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">检测微服务平台</h3>
					</div>
					<div class="panel-body">
						<div class="box-body">
							<form class="form-horizontal" id="loginform" role="form"
								method="post" action="${ctx}/login/changeAccount">
								<div class="form-group">
									<select id="e1" class="col-xs-12" name="customerId" id="customerId"
										placeholder="用户单位 ">
										<option></option>
										<c:if test="${!empty etplist}">
											<c:forEach items="${etplist}" var="etp" varStatus="i">
												<option value="${etp.customerId}">${etp.orgName}</option>
											</c:forEach>
										</c:if>
									</select>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="e2"
										placeholder="用户帐号" name="account" id="account" autofocus />
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="e3"
										placeholder="用户密码" name="password" id="password" autofocus />
								</div>
								<div class="form-group">
									<input type="submit" id="btn_login"
										class="btn btn-lg btn-success btn-block" value="确认切换">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${ctx}/assets1/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {
			handleSelect2();
		});

		var handleSelect2 = function() {
			function movieFormatResult(movie) {
				var markup = "<table class='movie-result'><tr>";
				if (movie.posters !== undefined
						&& movie.posters.thumbnail !== undefined) {
					markup += "<td class='movie-image'><img src='" + movie.posters.thumbnail + "'/></td>";
				}
				markup += "<td class='movie-info'><div class='movie-title'>"
						+ movie.title + "</div>";
				if (movie.critics_consensus !== undefined) {
					markup += "<div class='movie-synopsis'>"
							+ movie.critics_consensus + "</div>";
				} else if (movie.synopsis !== undefined) {
					markup += "<div class='movie-synopsis'>" + movie.synopsis
							+ "</div>";
				}
				markup += "</td></tr></table>"
				return markup;
			}

			function movieFormatSelection(movie) {
				return movie.title;
			}
			/* Basic */
			$("#e1").select2();
			/* Multi-Value Select Boxes */
			$("#e2").select2();
			/* With Placeholders */
			$("#e3").select2({
				placeholder : "Select a State",
				allowClear : true
			});
			/* With Placeholders */
			$("#e4").select2({
				placeholder : "Select a State"
			});
			/* Minimum Input */
			$("#e5").select2({
				placeholder : "Select 2 characters",
				minimumInputLength : 2
			});
			/* Maximum Selection Size */
			$("#e6").select2({
				placeholder : "Select a maximum of 3 states",
				maximumSelectionSize : 3
			});
			/* Loading Remote Data */
			$("#e7")
					.select2(
							{
								placeholder : "Search for a movie",
								minimumInputLength : 1,
								ajax : { // instead of writing the function to execute the request we use Select2's convenient helper
									url : "http://api.rottentomatoes.com/api/public/v1.0/movies.json",
									dataType : 'jsonp',
									data : function(term, page) {
										return {
											q : term, // search term
											page_limit : 10,
											apikey : "uekzdmffsrmqzwdtcgmc5yu9" //please do not copy API. Use your own. Copying will be treated as a violation - Cloud Admin Author
										};
									},
									results : function(data, page) { // parse the results into the format expected by Select2.
										// since we are using custom formatting functions we do not need to alter remote JSON data
										return {
											results : data.movies
										};
									}
								},
								initSelection : function(element, callback) {
									// the input tag has a value attribute preloaded that points to a preselected movie's id
									// this function resolves that id attribute to an object that select2 can render
									// using its formatResult renderer - that way the movie name is shown preselected
									var id = $(element).val();
									if (id !== "") {
										$
												.ajax(
														"http://api.rottentomatoes.com/api/public/v1.0/movies/"
																+ id + ".json",
														{
															data : {
																apikey : "uekzdmffsrmqzwdtcgmc5yu9" //please do not copy API. Use your own. Copying will be treated as a violation - Cloud Admin Author
															},
															dataType : "jsonp"
														}).done(function(data) {
													callback(data);
												});
									}
								},
								formatResult : movieFormatResult, // omitted for brevity, see the source of this page
								formatSelection : movieFormatSelection, // omitted for brevity, see the source of this page
								dropdownCssClass : "bigdrop", // apply css that makes the dropdown taller
								escapeMarkup : function(m) {
									return m;
								} // we do not want to escape markup since we are displaying html in results
							});
			/* Tagging Support */
			$("#e8").select2({
				tags : [ "red", "green", "blue" ]
			});
		}
	</script>
</body>
</html>