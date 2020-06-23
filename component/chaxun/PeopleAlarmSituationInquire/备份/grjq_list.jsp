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
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>报警详情</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <!-- <link rel="stylesheet" href="css/allrw.css"> -->
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/grlist_bd.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
    
    <style>
         .weui-cells{
             margin-top: 0;
         }
         .weui-btn_primary{
             width: 100%;
         }
         body{
             background-color:#fff;

         }
    </style>
</head>

<body>
    <div class="weui-cells">
        <div class="xqbanner"> <span></span> 处理详情 <span></span></div>
       
        <div class="weui-cell">
            <div class="weui-cell__bd">
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>接警人：</p>
                    </div>
                    <div class="weui-cell__ft ">${record_JJDB.jjyxm }</div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>接警时间：</p>
                    </div>
                    <div class="weui-cell__ft ">${record_JJDB.jjsj }</div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>出警人:</p>
                    </div>
                    <div class="weui-cell__ft">${record_feedback.jyxm }</div>
                </div>
                 <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>处理派出所:</p>
                    </div>
                    <div class="weui-cell__ft">${record_feedback.sspcs }</div>
                </div>
                <div class="weui-cell block">
                    <div class="weui-cell__bd">
                        <p>到场时间:</p>
                    </div>
                    <div class="weui-cell__ft">${record_arrice.create_date }</div>
                </div>
                <div class="weui-cell block">
                    <div class="weui-cell__bd">
                        <p>出警结束时间:</p>
                    </div>
                    <div class="weui-cell__ft">${record_alarmlist.create_date }</div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>处理情况:</p>
                    </div>
                    <div class="weui-cell__ft">${record_alarmlist.jqcljg }</div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>警情类型:</p>
                    </div>
                    <div class="weui-cell__ft">${record_alarmlist.jqxldm }</div>
                </div>
                <div class="weui-cell  ">
                   
                </div>
            </div>
        </div>
    </div>
    <footer style='position: absolute;bottom:0;width: 100%'>
            <a href="#" class="weui-btn weui-btn_primary blue ">下一步</a>
    </footer>

</body>
<script>
    $(function () {
        $('.weui-cell_swiped').swipeout()

        $('a').on('click', (e) => {
            e.preventDefault();
            window.location.href = 'jindu.html'
        })
    })
</script>


</html>