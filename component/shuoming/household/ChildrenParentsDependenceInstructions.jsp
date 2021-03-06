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
        <h2>子女投靠父母</h2>
    </header>
    <section>
        <div class="list">
            <p>需要申请材料</p>
            <div>
                <p>
                    1.双方居民户口簿、居民身份证；
                </p>
                <p>
                    2.父母与子女关系材料；
                </p>
                <p>
                    3.未婚声明（限达到法定婚龄的未婚子女投靠父母）；
                </p>
                <p>
                    4.离婚证或协议书、判决书（限离婚投靠）；
                </p>
                <p>
                    5.一方属现役军人（出国境定居或死亡、失踪）证明（限另一方投靠共同居住生活的公婆或岳父母）。
                </p>
            </div>
        </div>
        <div class="list">
            <p>办理流程及时限</p>
            <div>
                <p>
                    申请人通过互联网提交申请材料,派出所于3个工作日内预审,通过的,申请人到派出所提
                    交材料原件或将材料原件邮寄到派出所。派出所收到材料后，当场给予办理，办理完结后
                    反馈申请人。申请人可到派出所现场领取办理完毕的户籍证件、证明、簿册及需要退还的证件,或由派出所邮寄给申请人。
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
	 window.location.href="<%=basePath%>wx/jumpHousehold/jumpChildrenParentsDependence?openid=${openid}";
	}
</script>

</html>