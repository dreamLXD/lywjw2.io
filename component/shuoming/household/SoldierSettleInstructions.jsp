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
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/shuoming2.css">
</head>

<body>
    <header>
        <h2>士官、义务兵退出现役落户</h2>
    </header>
    <section>
        <div class="list">
            <p>需要申请材料</p>
            <div>
                <p>
                    1.安置部门落户介绍信、退役证件；
                </p>
                <p>
                    2.军人公民身份号码登记表、居民身份证；
                </p>
                <p>
                    3.拟落户地证件材料（包括合法稳定住所、居民户口簿、单位集体户、人才或社区集体户）。
                </p>
            </div>
        </div>
        <div class="list">
            <p>办理流程及时限</p>
            <div>
                <p>
                    申请人通过互联网提交申请材料,派出所于3个工作日内预审,通过的,申请人到派出所提交材料原件或将材料原件邮寄到派出所。派出所收到材料后，当场给予办理，办理完结后反馈申请人。申请人到派出所现场确认办理结果，在《办理户籍业务事项申请表》《常住人口登记表》等材料上签字、捺指纹，并领取办理完毕的户籍证件、簿册及需要退还的证件。
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
	 window.location.href="<%=basePath%>wx/jumpHousehold/jumpSoldierSettle?openid=${openid}";
	}
</script>

</html>