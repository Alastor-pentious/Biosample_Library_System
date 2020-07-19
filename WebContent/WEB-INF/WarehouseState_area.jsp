<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>库位状态-区域划分</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=basePath%>static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="<%=basePath%>static/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="<%=basePath%>static/css/theme.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Fixed navbar -->
    <jsp:include page="navbar.jsp" flush="true"/>
	
	<div class="container theme-showcase" role="main">
		<ul class="nav nav-tabs">
		  <li role="presentation" class="active"><a href="#">按照区域查询</a></li>
		  <li role="presentation"><a href="#">按照条件查询</a></li>
		</ul>
		<div id="tables" class="col-xs-10">
  			<div class="panel panel-default">
  			<!-- Default panel contents -->
  			<div class="panel-heading">库位状态表</div>
  			<!-- Table -->
  			<table class="table">
  				<tr>
					<th>变动编号</th>
					<th>样本名称</th>
					<th>变动方式</th>
					<th>原因</th>
					<th>数量</th>
					<th>变动时间</th>
				</tr>
				<c:forEach items="${alterquery}" var="node">
					<tr>
						<td> <c:out value="${node.sample_code}"></c:out> </td>
						<td> <c:out value="${node.sample_name}"></c:out> </td>
						<td> <c:out value="${node.sample_alter}"></c:out> </td>
						<td> <c:out value="${node.reason}"></c:out> </td>
						<td> <c:out value="${node.quantity}"></c:out> </td>
						<td> <c:out value="${node.alter_date}"></c:out> </td>
					</tr>
	   			</c:forEach>
  			</table>
		</div> 
		
		</div>
	</div>
</body>
</html>