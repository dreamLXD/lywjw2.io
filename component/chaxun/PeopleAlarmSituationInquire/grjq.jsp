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
    <title> 临沂微警务</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/css/grjq.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
</head>
<body>
    <div class="container" >
      <c:forEach items="${list }" var="list">
        <a  class="box_list blue_one">
      <input type="hidden" id="${list.id }"  name='id'  value="${list.id }"/>
<input type="hidden" id="${list.sjdbh }" name='sjdbh' value="${list.sjdbh }"/>
            <div class="top_box blue_two">警情已接收</div>
            <div class="box">
                <div class="box_title"></div>
                <div class="clearfix"><span>报警时间</span><span>${list.bjsj}</span></div>
<%--                 <div class="clearfix"><span>报警事由</span><span>${list.bjsy}</span></div> --%>
                <div class="clearfix"><span>处理单位</span><span>${list.cldw}</span></div>
                <div class="clearfix"><span>处理状态</span><span>${list.bjzt}</span></div>
            </div>
           
        </a>
         </c:forEach>
    </div>
</body>
<script type="text/javascript">
$('a').on('click',function(){
	//var id=$(this).find('input').val()
var id=$(this).find("input[name='id']").val()
	var sjdbh=$(this).find("input[name='sjdbh']").val()
// alert(sjdbh);
// alert(id)
		// window.location.href="<%=basePath%>wx/Query/AlarmProgressDetails?openid=${openid}&id="+id;
 window.location.href="<%=basePath%>wx/Query/AlarmProgressDetails?openid=${openid}&id="+id+"&sjdbh="+sjdbh;
})


</script>
</html>