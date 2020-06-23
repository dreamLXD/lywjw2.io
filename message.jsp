<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>临沂微警务</title>
    <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/huise.css">

    <style>
        body,
        html {

            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
        }

        body .box {
            width: 35%;
            height: 35%;
            background: url('<%=basePath%>webpage/lywjw/lyswjwwx/img/message.png') no-repeat center;
            background-size: contain;
            position: relative;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%)
        }
    </style>


</head>

<body>
    <div class="box">
		
    </div>
</body>


</html>