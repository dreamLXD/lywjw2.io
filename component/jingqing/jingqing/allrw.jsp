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
    <title>警情接收</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/allrw.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
    <style>
        a {
            color: #000;
        }
    </style>
    <style>
        .my_button {
            width: 100%;
            height: 50px;
            /* background-color:blue; */
            /* border: 1px solid rgb(238, 238, 238); */
            border-radius: 15px;
            padding: 10px, 20px;
            margin-top: 20px;
            line-height: 50px;
            color: rgb(97, 97, 97)
                /* background-color: #5cb4ff; */
        }

        .my_button:hover {
            color: #000
        }
    </style>
</head>

<body>
    <!--  <div class="weui-search-bar" id="searchBar">
        <form class="weui-search-bar__form">
            <div class="weui-search-bar__box">
                <i class="weui-icon-search"></i>
                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required="">
                <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
            </div>
            <label class="weui-search-bar__label" id="searchText">
                <i class="weui-icon-search"></i>
                <span>搜索</span>
            </label>
        </form>
        <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">确定</a>
    </div> -->

    <div class="weui-cells">
            <div id="for_box">
        
                </div>
        <div class="my_button" style="width: 100%;text-align:center" onclick="page()">下一页</div>
    </div>
</body>
<script>
    $('a').on('click', function () {
        var sjdbh = $(this).find('input').val()
        $.showLoading();
        setTimeout(function () { $.hideLoading() }, 3000)
        window.location.href = "<%=basePath%>wx/querypolice/querypolice?openid=${openid}&sjdbh=" + sjdbh + "&before=1";

    })
</script>
<script>
    var pageNumber = 0;
    var pageSize = 10;
    let str = ``;
    let key = true;
    page()
    function page() {

        if (key) {
            pageNumber++;
            var obj = {};
            obj.pageNumber = pageNumber;
            obj.pageSize = pageSize;
            obj.openid = '${openid}';
            obj.PageName='receive'
            console.log(obj)
            $.ajax({
                url: '<%=basePath%>wx/jumppolicelist/JumpPoliceList_page',
                type: "post",
                dataType: "json",
                data: obj,
                success: function (data) {
                    console.log("这是请求成功的");
                    console.log(data);

                    if (data.data.length != '0') {
                        data.data.forEach(element => {

                            str += `<a class="weui-cell weui-cell_swiped">
                <input type="hidden" id="`+element.sjdbh+`" value="`+element.sjdbh+`" />
                <div class="weui-cell__bd  myellow">
                    <div class="weui-cell">
                        <div class="weui-cell__bd">
                            <p>`+element.bjrxm+`</p>
                        </div>
                        <div class="weui-cell__ft black">`+element.bjsj+`</div>
                    </div>
                    <div class="weui-cell">
                        <div class="weui-cell__bd">
                            <p class="gray">地址:</p>
                        </div>
                        <div class="weui-cell__ft">`+element.bjdz+`</div>
                    </div>
                </div>
                <div class="weui-cell__ft">
                </div>
            </a>`

                        });

                        $('#for_box').append(str)
                    }

                    if (data.data.length < pageSize) {
                        key = false
                    }
                    console.log(key)
                },
                error: function (err) {
                    console.log("这是请求失败的");
                }
            });
        }
    }


</script>

</html>