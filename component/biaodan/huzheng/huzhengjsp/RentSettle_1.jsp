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
    <title>租房落户</title>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
    	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
    	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/alert.js"></script>
    <style>
        html,body{
            width: 100%;
            height: 100%;
        }
        .container{
            position: relative;
            top:40%;
            transform: translateY(-50%);
        }
        .box{
            padding: 30px;
        }
        .box >div{
            margin-bottom: 10px;
            text-align: center;
        }
        .box label{
            font-size: 16px;
            margin-bottom:20px;
        }
        .box input{
            width: 100%;
            font-size: 16px;
            text-align: center;
            border:none;
            border:1px solid #ccc;
            padding: 5px 0;
            outline: none;
            color: #666;
        }

        .weui-btn_primary{
            background-color: #3371e3;
        }
        .weui-btn_primary:not(.weui-btn_disabled):active{
            background-color: #3165c9;

        }
    </style>
</head>

<body>
<div class="container">
   <div class="box">
       <div><label>有无稳定的合法住所证明</label></div>
       <div><input type="text" id="zhengming"  placeholder="请选择类型"></div>
       <a href="javascript:;"  class="weui-btn weui-btn_primary">下一步</a>
   </div>
</div>
</body>

    <script>
    
  
    
        $("#zhengming").select({
            title: "类型",
            items: [
                {
                    title: "有合法稳定的住所证明",
                    value: "1",
                },
                {
                    title: "无合法稳定的住所证明",
                    value: "2",
                }],
            onChange:function () {
                if( $('#zhengming').data('values') == '1'){
                   $('a').on('click',function (e) {
                       e.preventDefault();
                       
                       window.location.href="<%=basePath%>wx/jumpHousehold/jumpRentSettle_2?openid=${jbxx.openid}&PageName=RentSettle_2&val=1"
                   })
                }else if($('#zhengming').data('values') == '2'){
                    $('a').on('click',function (e) {
                        e.preventDefault();
                        window.location.href="<%=basePath%>wx/jumpHousehold/jumpRentSettle_2?openid=${jbxx.openid}&PageName=RentSettle_2&val=2"
                    })
                }
            }
        })
    </script>

</html>