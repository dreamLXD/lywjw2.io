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
    <meta name="viewport" content="width=device-width,initial-scale=1.0;user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 临沂微警务 </title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/layui-src/dist/css/layui.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <style>
        ul.layui-timeline {
            padding: 40px;
            box-sizing: border-box;
        }

        .layui-timeline-title span {
            display: block;
        }

        .layui-timeline-title span:nth-of-type(2) {
            font-size: 14px;
            color: #999;
        }

        .layui-timeline-title {
            margin-bottom: 5px;
        }

        .layui-timeline-title .pj {
            display: inline-block;
            background-color: #007aff;
            color: #fff;
            padding: 5px 15px;
            border-radius: 5px;
            font-size: 14px;
        }

        .layui-timeline-axis {
            color: #007aff;
        }
    </style>
</head>

<body>
    <ul class="layui-timeline">
        <c:forEach items="${list }" var="list">
            <li class="layui-timeline-item">


                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>

                <div class="layui-timeline-content layui-text">
                    <h3 class="layui-timeline-title"><span>${list.sptype}</span><span>${list.create_time }</span> </h3>
                    <p>
                        ${list.remarks}
                    </p>

                </div>

            </li>
        </c:forEach>

        <li class="layui-timeline-item" <c:if test="${record.sptype != 1 || '-1'  eq record.evaluate}">style="display:
            none" </c:if> >
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title"><span class="pj">进行评价</span></h3>

            </div>
        </li>
        <li class="layui-timeline-item" <c:if test="${record.pj_sign !=0|| '-1'  eq record.pj_sign}">style="display:
            none" </c:if> >
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title"><span>已完成评价</span></h3>

            </div>
        </li>
    </ul>
</body>
<script>
    $(function () {
        $('.pj').on('click', function () {
            window.location.href = "<%=basePath%>wx/Query/Evaluate?openid=${openid}&id=${id}";
        })
    })
</script>

</html>