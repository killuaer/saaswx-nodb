<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>报告查询</title>
<meta charset="utf-8" />
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<link href="${ctx}/assets/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${ctx}/assets/fontawesome/css/font-awesome.min.css" />
<link rel="stylesheet" href="${ctx}/assets/bigautocomplete/jquery.bigautocomplete.css" />
<script src="${ctx}/assets/jquery/1.11.3/jquery.min.js"></script>
<script src="${ctx}/assets/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${ctx}/ui/css/weui.css" />
<link rel="stylesheet" href="${ctx}/ui/css/jquery-weui.css" />
<script type="text/javascript" src="${ctx}/ui/js/jquery.js"></script>
<script type="text/javascript" src="${ctx}/ui/jquery-weui.js"></script>
<script type="text/javascript" src="${ctx}/assets/bigautocomplete/jquery.bigautocomplete.js"></script>
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
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-box-plain">
					<h3 class="bigintro">报告查询</h3>
					<div class="divide-40"></div>
					<form role="form" id="reportForm" action="../report/list">
						<div id="showInfo">
							<input type="hidden" name="customer_id" value="32b003" />
							<div>
								<%-- <label for="exampleInputIdCard">报告编号</label> <i class="fa fa-newspaper-o"></i>
								<input type="text" class="form-control" id="prtnum" name="prtnum" value="${prtnum }" /> --%>
								<label for="exampleInputIdCard">委托编号</label> <i class="fa fa-newspaper-o"></i>
								<input type="text" class="form-control" id="wt_num" name="wt_num" value="${wt_num }" />
							</div>
						</div>
						<div class="form-actions" style="text-align: center; padding-top: 10px;">
							<button type="button" id="query-btn" class="btn btn-info " style="width: 60%;">查询</button>
						</div>
					</form>
					<div class="weui-form-preview__hd" id="no_record">
						<c:if test='${jsonArray[0] == null && customer_id != null}'>
							<label class='weui-form-preview__label'>没有相应记录</label>
						</c:if>
					</div>
					<c:if test="${jsonArray[0] != null}">
						<div class="weui-form-preview" style="border: 1px solid #ccc; margin-top: 10px; padding: 10px;">
							<div class="weui-form-preview__bd">
								<div class="weui-form-preview__item">
									<label class="weui-form-preview__label" style="vertical-align: top;">工程名称:</label> <span class="weui-form-preview__value"
										style="max-width: 79%; display: inline-block;">${jsonArray[0].gc_name}</span>
								</div>
								<div class="weui-form-preview__item">
									<label class="weui-form-preview__label" style="vertical-align: top;">工程地址:</label> <span class="weui-form-preview__value"
										style="max-width: 79%; display: inline-block;">${jsonArray[0].gc_address}</span>
								</div>
								<div class="weui-form-preview__item">
									<label class="weui-form-preview__label" style="vertical-align: top;">检测项目:</label> <span class="weui-form-preview__value"
										style="max-width: 79%; display: inline-block;">${jsonArray[0].xm_name}</span>
								</div>
								<c:forEach items="${jsonArray}" var="jcs">
									<div class="weui-form-preview__item">
										<label class="weui-form-preview__label" style="vertical-align: top;">检测进度:</label> <span class="weui-form-preview__value"
											style="max-width: 79%; display: inline-block;">${jcs.data_ip}</span>
									</div>
									<div class="weui-form-preview__item">
										<label class="weui-form-preview__label" style="vertical-align: top;">检测结果:</label>
										<c:if test="${jcs.note_ip == 'y'}">
											<span class="weui-form-preview__value" style="max-width: 79%; display: inline-block;">合格</span>
										</c:if>
										<c:if test="${jcs.note_ip == 'n'}">
											<span class="weui-form-preview__value" style="max-width: 79%; display: inline-block;">不合格</span>
										</c:if>
										<c:if test="${jcs.note_ip == 'f'}">
											<span class="weui-form-preview__value" style="max-width: 79%; display: inline-block;">复检</span>
										</c:if>
										<c:if test="${jcs.note_ip == 'q'}">
											<span class="weui-form-preview__value" style="max-width: 79%; display: inline-block;">其他</span>
										</c:if>
										<c:if test="${jcs.note_ip == 'w'}">
											<span class="weui-form-preview__value" style="max-width: 79%; display: inline-block;">重检</span>
										</c:if>
									</div>
									<div class="weui-form-preview__item">
										<label class="weui-form-preview__label" style="vertical-align: top;">检测结论:</label> <span class="weui-form-preview__value"
											style="max-width: 79%; display: inline-block;">${jcs.note}</span>
									</div>
									<div class="weui-form-preview__item">
										<label class="weui-form-preview__label" style="vertical-align: top;">不合格参数:</label> <span class="weui-form-preview__value"
											style="max-width: 79%; display: inline-block;">${jcs.ycjg}</span>
									</div>
								</c:forEach>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		$.ajax({
			type : "GET",
			url : "../report/getAllCustomerId",
			timeout : 10000,
			dataType : "json",
			success : function(data) {
				$("#usernum").bigAutocomplete({
					data : data,
					callback : function(data) {
						console.log(data);
						$("[name='customer_id']").val(data.customerId);
					}
				});
			},
			error : function(msg) {
			}

		});

		$("#query-btn").click(function() {
			if ($("[name='usernum']").val() == "") {
				alert("检测单位账号必填！");
				return;
			}
			/* if ($("[name='prtnum']").val() == "") {
				alert("报告编号必填！");
				return;
			} */
			if ($("[name='wt_num']").val() == "") {
				alert("委托编号必填！");
				return;
			}

			$("#reportForm").submit();

		});
	});
</script>
</html>