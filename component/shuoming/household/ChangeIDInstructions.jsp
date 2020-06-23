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
        <h2>公民身份号码更正证明（限重、错号）</h2>
    </header>
    <section>
        <div class="cen fixclear"><span class="title">办理须知</span> <a onclick="jumpHousehold()"
                class="btn">申报</a>
        </div>
        <div>
            <h5>需要申请材料</h5>
            <p>
                1.本人或监护人申请；
            </p>
            <p>
                2.有效身份证件。
            </p>
            <h5>办理流程及时限</h5>
            <p>
                申请人通过互联网提交申请材料,分县局于3个工作日内预审,通过的,申请人到分县局户政服务大厅提交材料原件或将材料原件邮寄到分县局户政服务大厅。分县局所收到材料后，当场给予办理，办理完结后反馈申请人。申请人可到分县局户政服务大厅现场领取办理完毕的户籍证件、证明、簿册及需要退还的证件,或由分县局邮寄给申请人。

            </p>

        </div>
    </section>

</body>
<script>
function jumpHousehold(){
	 window.location.href="<%=basePath%>wx/jumpHousehold/jumpChangeID?openid=${openid}";
	}
</script>
</html>