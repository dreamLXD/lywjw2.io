﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>办理说明</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/shuoming.css">
</head>

<body>
    <header>
        <h2>出国（境）定居注销 </h2>
    </header>
    <section>
        <div class="cen fixclear"><span class="title">办理须知</span> <a onclick="jumpHousehold()"
                class="btn">申报</a>
        </div>
        <div>
            <h5>需要申请材料</h5>
            <p>
                1.居民户口簿、居民身份证；
            </p>
            <p>
                2.住在国（地区）永久居留资格证明或者外国有效护照；
            </p>
            <p>
                3.出入境管理部门出具的注销户口通知书（限经出入境部门批准出国境定居的）。
            </p>


            <h5>办理流程及时限</h5>
            <p>
                申请人通过互联网提交申请材料,派出所于3个工作日内预审,通过的,申请人到派出所提交材料原件或将材料原件邮寄到派出所。派出所收到材料后，当场给予办理，办理完结后反馈申请人。申请人可到派出所现场领取需要退还的证件,或由派出所邮寄给申请人。

            </p>

        </div>
    </section>

</body>
<script>
function jumpHousehold(){
	 window.location.href="<%=basePath%>wx/jumpHousehold/jumpAbroadCancellation?openid=${openid}";
	}
</script>
</html>