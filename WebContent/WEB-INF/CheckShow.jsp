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
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

    <title>盘点详情查询</title>

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
	<jsp:include page="navbar.jsp" flush="true"/>
	<div class="container theme-showcase" role="main">
		<div class="panel panel-default">
  			<!-- Default panel contents -->
  			<div class="panel-heading">对比结果</div>
  			<!-- Table -->
  			<table class="table">
  				<tr>
					<th>ID</th>
					<th>样本编码</th>
					<th>储存位置</th>
					<th>所属盘点</th>
					<th>比对结果</th>
				</tr>
				<c:forEach items="${check}" var="node">
					<tr>
						<td> <c:out value="${node.cs_id}"></c:out> </td>
						<td> <c:out value="${node.sample_id}"></c:out> </td>
						<td> <c:out value="${node.position_id}"></c:out> </td>
						<td> <c:out value="${node.check_id}"></c:out> </td>
						<td> <c:out value="${node.state}"></c:out> </td>
					</tr>
	   			</c:forEach>
  			</table>
		</div>
		<form action="<%=basePath%>check/comp_submit" method="get">
			<div class="form-group">
				<div class="input-group">
  					<input type="hidden" id="type" class="form-control" name="type" value="${forsure}" aria-describedby="basic-addon2" readonly>
  				</div>
			</div>
			<div class="form-group">
				<span class="input-group-btn">
					<button id="btn1" onclick="exit()" class="btn btn-default" type="button">确认比对结果</button>
      			</span>
			</div>
		</form>
	</div>
	
	
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=basePath%>static/js/jquery-3.4.1.min.js"></script>
    <script src="<%=basePath%>static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script>
    	function exit(){
    		document.getElementById("type").value='exit';
    		document.forms[0].submit();
    	}
    </script>
</body>
</html>