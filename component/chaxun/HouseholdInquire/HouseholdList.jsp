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
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/grzx/css/weuix.css">

    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>

    <style>
    .my_button{
        width: 100%;
        height: 50px;
        /* background-color:blue; */
        /* border: 1px solid rgb(238, 238, 238); */
        border-radius: 15px;
        padding:10px,20px;
        margin-top: 20px;
        line-height: 50px;
        color: rgb(97, 97, 97)
        /* background-color: #5cb4ff; */
    }
    .my_button:hover{
        color: #000
    }
    </style>
</head>
<body>
    <!-- <div style="width: 100%" style="height: 50%"> ${list}</div> -->
    <div class="container" >
    <div id="for_box">
        
    </div>
         <div class="my_button" style="width: 100%;text-align:center" onclick="page()">下一页</div>
    </div>
</body>
<script type="text/javascript">

$('#for_box').on('click','a',function(){
$.showLoading('加载中...');
hide()
})
$('#for_box').on('click','a',function(){
	var id=$(this).find('input').val()
		 window.location.href="<%=basePath%>wx/Query/Progress2?openid=${openid}&id="+id;

})
var pageNumber=0;
var pageSize=10;
let str=``;
let key=true;   
page()
function page(){
 
if(key){
    pageNumber++;
var obj={};
obj.pageNumber=pageNumber;
obj.pageSize=pageSize;
obj.openid='${openid}';

console.log(obj)
    $.ajax({
        url: '<%=basePath%>wx/Query/HouseholdQuery_page',
        type: "post",
        dataType: "json",
        data: obj,
        success: function (data) {
            console.log("这是请求成功的");
            console.log(data);
            
                if(data.data.length!='0'){
                    data.data.forEach(element => {

str+=`<a  class="box_list blue_one">
<input type="hidden" id="`+element.pid +`" value="`+element.pid +`"/>
<div class="top_box blue_two">户政已受理</div>
<div style="position: absolute;right:15px;top:15px;padding: 2px 5px;">详情 》</div>
<div class="box">
<div class="box_title">`+element.bltype+`</div>
<div class="clearfix"><span>处理时间</span><span>`+element.update_date +`</span></div>
<div class="clearfix"><span>处理派出所</span><span>`+element.blpcs+`</span></div>
<div class="clearfix"><span>处理情况</span><span>`+element.sptype +`</span></div>
</div>`

});
$('#for_box').append(str)
                }
          
            if(data.data.length<pageSize){
                    key=false
            }
            console.log(key)
        },
        error:function (err) {
            console.log("这是请求失败的");
        }
    });
}
}


</script>
</html>