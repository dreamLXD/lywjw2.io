<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<!-- <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
<title>一键报警</title>
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
<link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weui_biaodan.css">
<link rel="stylesheet"
    href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
    <link rel="stylesheet"
	href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/biaodan/huzheng/js/alert.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/city-picker.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/yjbaojing/js/regular.js"></script>
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/yjbaojing/js/yjbj.js"></script>
<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>

<!-- <script src='//cdn.bootcss.com/eruda/1.4.0/eruda.min.js'></script>
    <script>
        eruda.init()
    </script> -->
<style type="text/css">
.orientation {
	position: relative;
}

.gird.or_content {
	box-sizing: border-box
}

.orientation span {
	position: absolute;
	right: 30px;
	display: inline-block;
	width: 25px;
	height: 25px;
	background: url(<%=basePath%>webpage/lywjw/lyswjwwx/img/dldw.png)
		no-repeat center;
	background-size: contain;
}

#type_show {
	
}
/*.weui-prompt-input{*/
/*height: 60px;*/
/*}*/
#video .video_box span {
	z-index: 100;
}

.weui-cells_form {
	padding: 0;
}

.zhegai {
	z-index: 1000;
}

footer {
	height: auto;
}

.inherit {
	position: inherit;
}

.Center img {
	position: fixed;
	z-index: 1100;
	left: 50%;
	top: 50%;
	height: 0;
	transform: translate(-50%, -50%);
}

.bolck_show {
	display: block;
}

#qrcode {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.or_content {
	width: 100%;
	padding: 5px;
	height: 80px;
	font-size: 14px;
}

.text12 {
	margin-top: 20px;
	font-size: 12px;
	padding: 5px 20px;
	background-color: #fff;
}

.weui-textarea, .or_content.error {
	border: 1px solid red !important;
}

/*jqdw 重新定位*/
a {
	text-decoration: none;
}

body {
	position: absolute;
	width: 100%;
	height: 100%;
}

#geoPage, #markPage {
	position: relative;
}

.box {
	line-height: 40px;
	width: 100%;
	position: absolute;
	bottom: 0;
	color: #fff;
	background-color: #6ba6e9;
	text-align: center;
	cursor: pointer;
}

.container1 {
	display: none;
	width: 100%;
	height: 100%;
}

.weui-textarea, .or_content {
	box-sizing: border-box;
	border: 1px solid #eee !important;
}

.weui-cells:before {
	content: " ";
	position: absolute;
	left: 0;
	top: 0;
	right: 0;
	height: 1px;
	border-top: 1px solid #e5e5e5;
	color: #e5e5e5;
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	-webkit-transform: scaleY(.5);
	transform: scaleY(.5);
	left: 15px;
	z-index: 2;
}

.weui-textarea.error {
	border: 1px solid red !important;
}
</style>
</head>

<body>
	<!--定位-->

	<div class="container1" style="display: none;">

		<a class="box" href="#dldw"> 确定 </a>

		<iframe id="mapPage" width="100%" height="100%" frameborder=0
			src="https://apis.map.qq.com/tools/locpicker?search=1&type=1&key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu">
		</iframe>

	</div>


	<iframe style="display: none" id="geoPage" width="100%" height="0%"
		frameborder=0 scrolling="no"
		src="https://apis.map.qq.com/tools/geolocation?key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu&effect=zoom"></iframe>
	<!--<iframe    id="markPage" width="100%" height="0%" frameborder=0 scrolling="no" src=""></iframe>-->

	<form action="#" method="post" id="from" class="from">
		<section>
			<h1>报警基本信息</h1>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<input type="hidden" id="openid" name="openid" value="${openid}">
					<div class="weui-cell__hd">
						<label class="weui-label">报警人姓名:</label>
					</div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" name="bjrxm" readonly
							required value="${record.zsxm}">
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd">
						<label class="weui-label">报警人性别:</label>
					</div>
					<div class="weui-cell__bd">
						<input class="weui-input " id="sex" type="text" name="bjrxb"
							readonly required value="${record.zsxb}">
					</div>
				</div>

				<input id='oldlxdh' type="hidden" name="oldlxdh" value="${record.lxdh}">

				<div class="no_lxdh"></div>

				<div class="weui-cells   weui-cells_form video">
					<div class="weui-cell">
						<div class="weui-cell__hd block">
							<span>定位地点</span> <span id="dldw" class="dldw"></span>
						</div>
					</div>
					<div class="weui-cell">
						<div class="weui-cell__hd block">
							<textarea class="gird or_content" name="bjdz" placeholder='请选择地点'></textarea>
						</div>

					</div>
				</div>

				<div class="weui-cell">
					<div class="weui-cell__hd">
						<label class="weui-label">报警内容:</label>
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__bd">
						<textarea class="weui-textarea" name="bjnr" placeholder="请输入内容"
							rows="5"></textarea>
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__hd">
						<label class="weui-label">联系住址:</label>
					</div>
				</div>
				<div class="weui-cell">
					<div class="weui-cell__bd">
						<textarea class="weui-textarea" name="lxdz" placeholder="请输入现住址"
							rows="5"></textarea>
					</div>
                </div>


            </div>
            
		</section>
		<footer>
			<button>提交</button>
		</footer>
	</form>
</body>

<!-- <script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/dw.js"></script> -->

<script type="text/javascript">
console.log(base_path)
var obj={};
	var latitude = '';
    var longitude = '';
	
	           $.showLoading('地图定位中，请稍候');
					wx.config({
						debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
						appId: '${appId}', // 必填，公众号的唯一标识
						timestamp: "${timestamp}", // 必填，生成签名的时间戳
						nonceStr: '${nonceStr}', // 必填，生成签名的随机串
						signature: '${signature}',// 必填，签名，见附录1
						jsApiList: ['getLocation'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
					});

					wx.ready(function () {
					
						console.log('gfhg')
						wx.getLocation({
							type: 'gcj02', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
							success: function (res) {
								latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
								longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
								var speed = res.speed; // 速度，以米/每秒计
								var accuracy = res.accuracy; // 位置精度
								console.log(longitude)

                                obj['lat']=latitude;
                                obj['lng']=longitude
                                $.ajax({
                                    url: base_path + `/wechatcall/coordinate`,
                                    type: 'post',
                                    data: obj,
                                    dataType: 'text',
                                //	async: false,
                                    success: function (msg) {
                                        console.log(msg)
                                        // alert(msg)
                                        $(".or_content").html(msg);
                                         $.hideLoading();
                                    }

                                })                               
							}
							
						});
					});
					
                   
						

</script>


<script type="text/javascript">

console.log(openid);

$('.orientation span').on('click', function () {
	var openid=$("#openid").val();
    window.location.href="<%=basePath%>wx/jumppolice/orientation?openid="+openid;
})


let oldlxdh=$('#oldlxdh').val()
console.log(oldlxdh);
if(oldlxdh==0){
    let str=`
    <div class="weui-cell" id="wudh" >
                        <div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
                        <div class="weui-cell__bd">
                            <input class="weui-input lxdh" type="tel"  name="lxdh" required placeholder="请输入联系电话">
                        </div>
                </div> 

            
    `
   $('.no_lxdh').append(str)
    
}else{
   let str=`
   <div class="weui-cell" id="youdh">
                    <div class="weui-cell__hd"><label class="weui-label">联系电话:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input lxdh" type="tel"  name="lxdh" readonly required value="${record.lxdh}">
                    </div>
                </div> 
   `
   $('.no_lxdh').append(str)
   
}



    $('.dldw').on('click',function () {
        $(".container1").css('display','block')
        $(".container2").css('display','none')

        $(".from").css('display','none')

    })

 
  window.addEventListener('message', function(event) {
        // 接收位置信息，用户选择确认位置点后选点组件会触发该事件，回传用户的位置信息
        var loc = event.data;
        if (loc && loc.module == 'locationPicker') {
            //防止其他应用也会向该页面post信息，需判断module是否为'locationPicker'

            console.log('location', loc);
            obj.lat=loc.latlng.lat;
             obj.lng=loc.latlng.lng
            $('.or_content').text(loc.poiaddress)
            dwobj=loc.latlng;
        }
        str=''
        str=loc.poiaddress;
    }, false);
    $('.box').on('click',function () {
        $(".container2").css('display','block')
        $(".container1").css('display','none')

        $(".from").css('display','block')
	// $(".or_content").val()
    })

</script>



</html>