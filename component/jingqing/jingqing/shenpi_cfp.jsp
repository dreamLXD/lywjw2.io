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
    <title>Document</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/allrw.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/shenpi_cfp.js"></script>
<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>

    <style>
        .weui-form-preview__btn:active {
            background-color: #fff
        }

        .weui-cells {
            margin-top: 0;
            box-shadow: 3px 3px 3px #ccc;
        }

        #title {
            background-color: #fff;
            text-align: center;
            font-size: 18px;
            /*font-weight: 600;*/
            padding: 20px 0;
        }

        /*body{*/
        /*background-color: #fff;*/
        /*}*/
        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #fff;
        }
    </style>
</head>

<body>
    <div id="title">重分配</div>
    <div class="weui-cells">
        <div class="weui-cells weui-cells_form">
            <div class="weui-cell">
                <div class="weui-cell__hd"><label class="weui-label">分配派出所</label></div>
                <div class="weui-cell__bd">
                    <input class="weui-input" id="type" type="text" placeholder="请选择派出所">
                </div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__hd"><label class="weui-label" style="width: 100%">重分配原因:</label></div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <textarea class="weui-textarea" name="xcclqk" placeholder="填写重分配原因" rows="10"></textarea>
                </div>
            </div>


        </div>
        <footer>
            <div class="weui-form-preview__ft">
                <a class="weui-form-preview__btn weui-form-preview__btn_default " href="./shenpi.html">返回</a>
                <button type="submit"
                    class="weui-form-preview__btn weui-form-preview__btn_primary blue_color">接受</button>
            </div>
        </footer>

    </div>
</body>
<script>
    $('.weui-cell_swiped').swipeout();
    $('footer button').on('click', function () {
        $.alert({
            title: '警务',
            text: '已经重分配',
            onOK: function () {
                window.location.href = '<%=basePath%>webpage/lywjw/lyswjwwx/jingqing.html';
                jiazai()

            }
        });
    })
</script>

</html>