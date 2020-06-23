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
        <h2>居住落户</h2>
    </header>
    <section>
        <div class="list">
            <p>需要申请材料</p>
            <div>
                <p>
                    1.居民户口簿、居民身份证；
                </p>
                <p>
                    2.房屋产权证，或不动产权证，或房管部门出具的房屋登记信息材料；
                </p>
                <p>
                    3.随迁人员亲属关系材料。
                </p>
            </div>
        </div>
        <div class="list">
            <p>办理流程及时限</p>
            <div>
                <p>
                    申请人通过互联网提交申请材料,派出所于3个工作日内预
                    审,通过的,申请人到派出所提交材料原件或将材料原件邮
                    寄到派出所。派出所收到材料后，当场给予办理，办理完
                    结后反馈申请人。申请人可到派出所现场领取办理完毕的
                    户籍证件、证明、簿册及需要退还的证件,或由派出所邮寄
                    给申请人。

                </p>
            </div>
        </div>
    </section>
    <footer>
        <a target="_parent" onclick="jumpHousehold()">我已认真阅读并同意</a>
    </footer>
</body>
<script>
function jumpHousehold(){
	 window.location.href="<%=basePath%>wx/jumpHousehold/jumpResidenceSettle?openid=${openid}";
	}
</script>

</html>