<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>临沂微警务</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/grzx/css/list_2.css">
</head>


<body>
    <div class="container">
        <a href="jindu.html" class="box_list blue_one" style="display: block; color: #000; text-decoration: none">
            <div class="top_box blue_two">2018-11-12</div>
            <div class="box ">
                <div class="box_title "><span>处理完成</span><span>白龙居委会处理完成</span></div>
                <div class=" text clearfix"><span>内容：</span><span>楼下违规停车，严重影响行人出行</span></div>
            </div>
        </a>
        <a href="jindu.html" class="box_list blue_one" style="display: block; color: #000; text-decoration: none">
            <div class="top_box blue_two">2018-11-12</div>
            <div class="box ">
                <div class="box_title "><span>已提交</span><span>已交临沂公安局处理</span></div>
                <div class=" text clearfix"><span>内容：</span><span>身份证丢失，重新办理</span></div>
            </div>
        </a>
        <a href="jindu.html" class="box_list blue_one" style="display: block; color: #000; text-decoration: none">
            <div class="top_box blue_two">2018-11-12</div>
            <div class="box ">
                <div class="box_title "><span>正在处理</span><span>交通违法缴费已完成</span></div>
                <div class=" text clearfix"><span>内容：</span><span>闯红灯，交通违法缴费</span></div>
            </div>
        </a>


    </div>
</body>

</html>