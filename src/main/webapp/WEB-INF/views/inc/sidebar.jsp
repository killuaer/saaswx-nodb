<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="navbar-default sidebar" role="navigation">
	<div class="navbar-collapse">

		<ul class="nav level1">
			<!--搜索框-->
			<li class="sidebar-search">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</li>
			<li class="active"><a href="#" class="active"><i
					class="fa fa-dashboard fa-fw"></i>首页</a></li>
			<li><a href="#"><i class=" fa fa-table fa-fw"></i>委托办理<span
					class="fa arrow"></span></a>
				<ul class="nav level2">
					<li><a href="#" onclick="btable()">委托样品登记</a></li>
					<li><a href="#" onclick="dtable()">样品信息查询</a></li>
				</ul></li>
			<li><a href="${ctx}/report/reportList"><i class=" fa fa-edit fa-fw"></i>报告查询<span
					class="fa arrow"></span></a></li>
			<li><a href="#"><i class=" fa fa-bar-chart fa-fw"></i>检测指南<span
					class="fa arrow"></span></a></li>
			<li><a href="#"><i class=" fa fa-wrench fa-fw"></i>收费标准<span
					class="fa arrow"></span></a></li>
			<li><a href="#"><i class=" fa fa-files-o fa-fw"></i>下载中心<span
					class="fa arrow"></span></a></li>
			<li><a href="#"><i class=" fa fa-sitemap fa-fw"></i>通知公告<span
					class="fa arrow"></span></a></li>
			<li><a href="#"><i class=" fa fa-star fa-fw"></i>联系我们<span
					class="fa arrow"></span></a></li>
			<li><a href="#"><i class=" fa fa-star fa-fw"></i>单位地图<span
					class="fa arrow"></span></a></li>
	</div>
</div>