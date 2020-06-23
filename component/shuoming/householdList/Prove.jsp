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
    <title>出具证明列表</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/tab.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/footer.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
</head>
<style>
    section {
        padding-bottom: 50px;
        background-color: #fff;
    }

    .blue {
        background-color: rgb(81, 163, 235)
    }

    .green {
        background-color: rgb(125, 212, 147)
    }
</style>

<body>
    <section>
        <div class="list">
            <a onclick="jumpInstructions('ChangeResidenceInstructions');" class="fixclear">
                <p>户口登记项目内容变更更正证明</p>
                <span class="blue">全程网办</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ChangeIDInstructions');"  class="fixclear">
                <p>公民身份号码更正证明（限重、错号）</p>
                <span class="blue">全程网办</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ResidenceCancellationInstructions');" class="fixclear">
                <p>注销户口证明</p>
                <span class="blue">全程网办</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('KinshipProofInstructions');"  class="fixclear">
                <p>亲属关系证明</p>
                <span class="blue">全程网办</span>
            </a>
        </div>


    </section>
</body>

<script>
function jumpInstructions(name){
	  window.location.href="<%=basePath%>wx/jumpInstructions/"+name+"?openid=${openid}";
	}
</script>
</html>