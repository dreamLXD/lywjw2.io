<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>临沂微警务</title>
	<style>
		iframe {
			width: 100%;
			height: 100%;
		}

		body,
		html {
			width: 100%;
			height: 100%;
			padding: 0;
			margin: 0;
		}
	</style>
</head>

<body>
	<iframe src="https://msjw.gat.shandong.gov.cn/wxcustomizelicenseplate/index.shtml?sduuid=${record.uuid}&sdtoken=${record.token}"
		frameborder="0"></iframe>
</body>

</html>