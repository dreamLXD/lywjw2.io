<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>警情接收</title>
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/allrw.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/Detailspage.css">
<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
 <!-- <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script> -->
 <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>

<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
<style>
	
#type_show {
	border: 1px solid #eee;
	padding: 5px;
}

.weui-dialog__bd .weui-cell {
	padding: 10px 15px;
}

.weui-btn {
	width: 100%;
}

html, body {
	height: 100%;
}

strong {
	font-size: 18px !important;
}

textarea, input{
	transition: all 0s;
}
footer{
	width: 100%;
	height: 2rem;
	position: fixed;
	bottom:0
}
.detail_head{
	background-color: #ffc25c
}
footer a{
	background-color: #ffc25c;
	display: block;
	height: 100%;
	text-align: center;
	line-height: 2rem;
	color: #fff
}
</style>
</head>

<body>
	<iframe style="display: block" id="geoPage" width="100%" height="0%"
		frameborder=0 scrolling="no"
		src="https://apis.map.qq.com/tools/geolocation?key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu&effect=zoom"></iframe>
	<iframe style="display: block" id="markPage" width="100%" height="0%"
		frameborder=0 scrolling="no" src=""></iframe>

	<div class="container">
		<h2 class="detail_head">报警详情</h2>
		<div class="detail_boxs">
			<div class="detail_box detail_list">
					<div>
					<span class="b_text">报警人：</span><span class="s_text">${record.bjrxm}</span>
				</div>
				<div>
					<span class="b_text"> 联系电话:</span><span class="s_text"><a
						href="tel:${record.lxdh}">${record.lxdh}</a></span>
				</div>
			</div>
			

            <!--   <div class="detail_box detail_area  orientation">
				<div class="text_area b_text">联系地址:</div>
				<div class="text_area s_text">${record.lxdz}</div>
			</div>  -->

			<div class="detail_box detail_area  orientation">
					<div class="text_area b_text">报警时间:</div>
					<div class="text_area s_text">${record.bjsj}</div>
				</div>

			<div class="detail_box detail_area  orientation">
				<div class="text_area b_text">事件单编号:</div>
				<div class="text_area s_text">${record.sjdbh}</div>
			</div>
			<div class="detail_box detail_area  orientation">
				<div class="text_area b_text">
					地理定位<span class="dldw"></span>
				</div>
				<div class="text_area s_text">${record.bjdz}</div>
			</div>
			<div class="detail_box detail_area">
				<div class="text_area b_text">报警内容:</div>
				<div class="text_area s_text">${record.bjnr}</div>
			</div>
			
			<footer>
				<a href="javascript:;" onclick="javascript :history.back(-1);">返回</a>
			</footer>
		</div>

	</div>


</body>
//<script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/dw.js"></script>




<script>

   $('.dldw').on('click',()=>{
        window.location.href='<%=basePath%>wx/jumppolice/navCar?openid=${openid}&xzb=${record.xzb}&yzb=${record.yzb}'
    }) 

	// $('.dldw').on('click',()=>{
    //     window.location.href='<%=basePath%>wx/jumppolice/navCar?openid=${openid}&xzb=118.391161&yzb=35.271004'
    // }) 

   $('.blue_color').on('click',function(){

	  console.log("a")
		//jiazai('')
		$.showLoading();
    	$.post("<%=basePath%>wx/wechatcall/wechatreceive","openid=${openid}&sjdbh=${record.sjdbh}",function (msg) {   	
			//jiazaiHid()
			    $.hideLoading();	
    	     if(msg==1){
				
				 $.toast("接取成功", 1000);
 	                
    	        window.location.replace('<%=basePath%>wx/login/PageJump?PageName=police&openid=${openid}');
				
			 
    	     }else if(msg==2){   	      
						
				    $.toast("取消操作", "cancel");
    	     }
    	    
    	    })

    })
    

    //驳回弹窗显示
    $('.show').on('click', function (e) {
		// e.preventDefault()
        $('.weui-mask.weui-mask--visible').css('visibility', 'visible')
		$('.weui-dialog.weui-dialog--visible').css('visibility', 'visible')
		$('.weui-cells_form').css('visibility', 'visible')

        $("#type_show").select({
            title: "类型",
            items: [{
                title: "超出管辖范围",
                value: 1
            },
                {
                    title: "超出职能范围",
                    value: 2
                }
            ]
        });
		$('.del_close').on('click', function (e) {
		e.preventDefault()
		$('.weui-cells_form').css('visibility', 'hidden')
        $('.weui-mask.weui-mask--visible').css('visibility', 'hidden')
        $('.weui-dialog.weui-dialog--visible').css('visibility', 'hidden')
    })
    })
    
    $('.newsubmit').on('click', function (e) {
		$.showLoading();
        e.preventDefault()
		var bhyy=$('.weui-textarea').val();
		$('.weui-cells_form').css('visibility', 'hidden')
		
        $('.weui-mask.weui-mask--visible').css('visibility', 'hidden')
        $('.weui-dialog.weui-dialog--visible').css('visibility', 'hidden')
    	$.post("<%=basePath%>wx/wechatcall/wechatareject","openid=${openid}&sjdbh=${record.sjdbh}&bhyy="+bhyy, function (msg) {   
			$.hideLoading();	     
   	     if(msg==1){
			 //alert("提交成功")
			 $.toast("驳回成功", 1000);
   	      window.location.replace('<%=basePath%>wx/login/PageJump?PageName=police&openid=${openid}');
   	     }else if(msg==2){
			
			// alert("提交失败")
			$.toast("驳回失败", "cancel");
   	     }
   	    
   	    })
    })
    

</script>


</html>