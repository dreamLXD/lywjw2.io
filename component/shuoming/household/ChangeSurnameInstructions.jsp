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
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/shuoming2.css">
</head>

<body>
    <header>
        <h2>变更姓氏</h2>
    </header>
    <section>
        <div class="list">
            <p>需要申请材料</p>
            <div>
                <p>
                    1.居民户口簿、居民身份证；
                </p>
                <p>
                    2.出生医学证明、生父母协商同意材料（限未成年生子女变更姓氏）；
                </p>
                <p>
                    3.收养证或解除收养关系证明、父母共同申请（限被收养的未成年子女变更姓氏）；
                </p>
                <p>
                    4.选取其他直系长辈血亲姓氏的关系证明（限选取其他直系长辈血亲姓氏）。
                </p>
            </div>
        </div>
        <div class="list">
            <p>办理流程及时限</p>
            <div>
                <p>
                    申请人通过互联网提交申请材料,派出所于3个工作日内预审,通过的,申请人到派出所提交材料原件或将材料原件邮寄到派出所。派出所收到材料后，当场给予办理，办理完结后反馈申请人。申请人可到派出所现场领取办理完毕的户籍证件、证明、簿册及需要退还的证件,或由派出所邮寄给申请人。

                </p>
            </div>
        </div>
    </section>
    <footer>
        <a onclick="jumpHousehold()">我已认真阅读并同意</a>
    </footer>
</body>

<script>
function jumpHousehold(){
	 window.location.href="<%=basePath%>wx/jumpHousehold/jumpChangeSurname?openid=${openid}";
	}
</script>

</html>