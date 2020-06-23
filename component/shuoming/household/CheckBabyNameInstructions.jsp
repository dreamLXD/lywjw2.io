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
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>办理说明</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/shuoming.css">
</head>

<body>
    <header>
        <h2>新生儿出生落户同名人数查询
        </h2>
    </header>
    <section>
        <div class="cen fixclear"><span class="title">办理须知</span> <a onclick="jumpHousehold()"
                class="btn">申报</a>
        </div>
        <div>
            <h5>需要申请材料</h5>
            <p>
                1.居民户口簿或居民身份证
            </p>
            <h5>办理流程及时限</h5>
            <p>
                申请人通过互联网提交申请材料,派出所于3个工作日内预审,通过的,派出所当场查询后反馈申请人。
            </p>

        </div>
    </section>

</body>
<script>
function jumpHousehold(){
	 window.location.href="<%=basePath%>wx/jumpHousehold/jumpCheckBabyName?openid=${openid}";
	}
</script>
</html>