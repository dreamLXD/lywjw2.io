<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>全部警情</title>
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/allrw.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
	<link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">

	<link  rel="stylesheet" src="<%=basePath%>webpage/lywjw/lyswjwwx/css/weuix.css">

	<link  rel="stylesheet" src="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
	<script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
	<style>
	
		html,body{
			height: 100%;
			background: #fff
		}
		.weui-cells {
			margin-top: 0;
		}

		a {
			color: #000;
		}
		.weui-cell__ft .spno{
			display: inline-block;
			width: 16px;
			height: 16px;
			font-size: 0;
			margin-left: 5px;
			background: url("http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/error.png") no-repeat center;
			background-size: 100% 100%;
			vertical-align:center
		}
			.weui-cell__ft .spyes{
			display: inline-block;
			width: 16px;
			height: 16px;
			font-size: 0;
			margin-left: 5px;
			background: url("http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/yes.png") no-repeat center;
			background-size: 100% 100%
		}
			.weui-cell__ft .jqyes{
			display: inline-block;
			width: 16px;
			height: 16px;
			font-size: 0;
			margin-left: 5px;
			background: url("http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/yes2.png") no-repeat center;
			background-size: 100% 100%
		}
			.weui-cell__ft .jqno{
			display: inline-block;
			width: 16px;
			height: 16px;
			font-size: 0;
			margin-left: 5px;
			background: url("http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/error2.png") no-repeat center;
			background-size: 100% 100%
		}	
			.weui-cell__ft .tjno{
			display: inline-block;
			width: 16px;
			height: 16px;
			font-size: 0;
			margin-left: 5px;
			background: url("http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/yes3.png") no-repeat center;
			background-size: 100% 100%
		}
		.search_box{
			padding: 10px;
			display: flex;
			width: 100%;
			box-sizing: border-box;
		}
		.search_left{
			flex: 1;
		}
		.search_right{
			flex: 4;
			display: flex;
		}
		.search_left_box{
			width: 80%;
			line-height: 1.6rem;
			text-align: center;
			background-color: #ffc13c;
			color:#fff;
			border-radius: 5px;
		}
		
		.search_left_box:active{
			background-color: #f0b129
		}
		.search_right input{
			width:38%;
			border: 1px solid #ccc;

			text-align: center;
		}
		.search_left_box.search_blue{
			background-color: rgb(90, 139, 246);
		}
		.search_left_box.search_blue:active{
			background-color: rgb(53, 111, 235);
		}
		.search_right span{
			width: 24%;
			text-align: center;
			color: #fff;
			line-height: 1.6rem;
			background-color: rgb(90, 139, 246);
			border-radius: 0 5px 5px 0;
		}
		.search_right #time1{
			border-radius:5px 0  0 5px;
			outline: none;
			display: block;
		}
		.search_right #time2{
			border-right: none;
			border-left: none;
		}
		.search_right span:active{
			background-color: rgb(53, 111, 235);
		}
		.weui-cell__bd.Bj_name p{
			font-size: 18px;
		}
		
	

	.container1  > .myellow:before{
		background-color: #ffc25c
	}
	.container5  > .myellow:before{
		background-color: rgb(79, 183, 243)
	}
	.container4 > .myellow:before{
		background-color: rgb(79, 183, 243)
	}
	
	.container2  > .myellow:before{
		background-color: #ffc25c
	}
	.container3  > .myellow:before{
		background-color: rgb(59, 216, 177)
	}
	.container6 > .myellow:before{
		background-color: rgb(216, 59, 59)
	}
	.container1 .weui-cell__ft{
		color: #d69c37
	}
	.container2 .weui-cell__ft{
		color: #d69c37
	}
	.container3 .weui-cell__ft{
		color: rgb(59, 216, 177)
	}
	.container4 .weui-cell__ft{
		color: rgb(79, 183, 243)
	}
	.container5 .weui-cell__ft{
		color: rgb(79, 183, 243)
	}
	.container6 .weui-cell__ft{
		color: rgb(216, 59, 59)
	}

	.img_load{
		width: 50%;
		margin: 0 auto;
		margin-top:40%;
		position: relative;
		left: 50%;
		transform: translateX(-50%)
	}
	.img_load2{
		display: none

	}
	.img_show2{
		display: block
	}
	.img_show{
		display: block
	}
	.weui-cells:after{
		border: none
	}

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
		<input type="hidden" id="openid" value="${openid}">
		<div class="search_box">
			<div class="search_left">
				<div class="search_left_box" data-day='2'>昨天</div>
			</div>
			<div class="search_right">
				<input type="text" id="time1">
				<input type="text" id="time2">
				<span>搜索</span>
			</div>
		</div>	

	<div class="weui-cells">
			<img src='http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/message.png' class="img_load" alt="">
	</div> 
	<div class="my_button img_load2" style="width: 100%;text-align:center">更多</div>
</body>
<script>
	  var pageNumber = 0;
    var pageSize = 10;
    let str = ``;
    let key = true;
    page(1)
    function page(num) {
	
  $.showLoading('加载中...');
        if (key) {
            pageNumber++;
            var obj = {};
            obj.pageNumber = pageNumber;
            obj.pageSize = pageSize;
            obj.openid = '${openid}';
            obj.day = num;
            console.log(obj)
			$.ajax({
			url: base_path + '/jumppolicelist/yeserday',
			type: 'post',
			data: obj,
			dataType: 'json',
			success: function (msg) {
				
				$.hideLoading();
				console.log(msg,'sadas')
				if(msg.length == 0){
					
					$('.my_button').addClass('img_load2')	
					
			
				}else{
					Strfn(msg)
					
				

				}
				
			}
		})
        }
    }
	function page2(start,end) {
		$.showLoading('加载中...');
	
if (key) {
	pageNumber++;
	var obj = {};
	obj.pageNumber = pageNumber;
	obj.pageSize = pageSize;
	obj.openid = '${openid}';

	obj.start = start;
	obj.end = end;


	console.log(obj)
	$.ajax({
	url: base_path + '/jumppolicelist/QueryTime',
	type: 'post',
	data: obj,
	dataType: 'json',
	success: function (msg) {
		
		$.hideLoading();
		
		console.log(msg)
		if(msg.length == 0){
					
			$('.my_button').addClass('img_load2')	
					
	
		}else{
			Strfn(msg)
			
				$('.my_button').removeClass('img_load2')	
			

		}
		
	}
})
}
}
	// $.ajax({
	// 		url: base_path + '/jumppolicelist/yeserday',
	// 		type: 'post',
	// 		data: { 'day': 1, "openid": $('#openid').val() },
	// 		dataType: 'json',
	// 		success: function (msg) {
				
				
	// 			console.log(msg)
	// 			if(msg.length == 0){
	// 			$('.img_load').addClass('img_show')	
	// 			}else{
	// 				Strfn(msg)
	// 				$('.img_load').removeClass('img_show')	

	// 			}
				
	// 		}
	// 	})
	$("#time2").datetimePicker({
		times: function () {
			return [
				{
					values: (function () {
						var hours = [];
						for (var i = 0; i < 24; i++) hours.push(i > 9 ? i : '0' + i);
						return hours;
					})()
				},
				{
					divider: true,  // 这是一个分隔符
					content: ''
				}
			];
		},
		onChange: function (picker, values, displayValues) {
			console.log(values);
		},
	})
	$("#time1").datetimePicker({
		times: function () {
			return [
				{
					values: (function () {
						var hours = [];
						for (var i = 0; i < 24; i++) hours.push(i > 9 ? i : '0' + i);
						return hours;
					})()
				},
				{
					divider: true,  // 这是一个分隔符
					content: ''
				}
			];
		}
	})

	var myDate = new Date();
	var year = myDate.getFullYear();
	var mon = myDate.getMonth() + 1;
	var date = myDate.getDate();
	var h = myDate.getHours();
		
	$('#time1').val(year+'-'+mon+'-'+date+' '+h)
	$('#time2').val(year+'-'+mon+'-'+date+' '+h)

	function Strfn(msg){
		let str='';
		msg.forEach(list => {
			
					if(list.type==1){
						str+=["<a  class=\"weui-cell weui-cell_swiped container1\" >",
"							<input type=\"hidden\" class=\"sjdbh\" value=\"",
list.sjdbh,
"							\"/>",
"							<input type=\"hidden\" class=\"type\" value=\"",
list.type ,
"							\"/>",
"							<input type=\"hidden\" class=\"before\" value=\"",
list.before,
"							\"/>",
"							<div class=\"weui-cell__bd  myellow\" >           ",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd Bj_name\">",
"									<p>",
	list.bjrxm,
"									</p>",
"								</div>",
"								<div class=\"weui-cell__ft black\">",
	list.bjsj,
"									</div>",
"							</div>",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd\">",
"									<p class=\"gray\">",
	list.cdjyxm,
"										</p>",
"								</div>						",
"								<div class=\"weui-cell__ft \"  >未接取 <span class=\"jqno\"></span></div>							 ",
"							</div>",
"							</div>",
"							<div class=\"weui-cell__ft\">	",
"							</div>",
"						</a>"].join("");
					
					}else if(list.type ==2){
						

						str+=["<a  class=\"weui-cell weui-cell_swiped container2\" >",
"							<input type=\"hidden\" class=\"sjdbh\" value=\"",
list.sjdbh,
"							\"/>",
"							<input type=\"hidden\" class=\"type\" value=\"",
list.type ,
"							\"/>",
"							<input type=\"hidden\" class=\"before\" value=\"",
list.before,
"							\"/>",
"							<div class=\"weui-cell__bd  myellow\" >           ",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd Bj_name\">",
"									<p>",
	list.bjrxm,
"									</p>",
"								</div>",
"								<div class=\"weui-cell__ft black\">",
	list.bjsj,
"									</div>",
"							</div>",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd\">",
"									<p class=\"gray\">",
	list.cdjyxm,
"										</p>",
"								</div>						",
"								<div class=\"weui-cell__ft \"  >已接处 <span class=\"jqyes\"></span></div>							 ",
"							</div>",
"							</div>",
"							<div class=\"weui-cell__ft\">	",
"							</div>",
"						</a>"].join("");
					}else if(list.type == 3){
						str+=["<a  class=\"weui-cell weui-cell_swiped container3\" >",
"							<input type=\"hidden\" class=\"sjdbh\" value=\"",
list.sjdbh,
"							\"/>",
"							<input type=\"hidden\" class=\"type\" value=\"",
list.type ,
"							\"/>",
"							<input type=\"hidden\" class=\"before\" value=\"",
list.before,
"							\"/>",
"							<div class=\"weui-cell__bd  myellow\" >           ",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd Bj_name\">",
"									<p>",
	list.bjrxm,
"									</p>",
"								</div>",
"								<div class=\"weui-cell__ft black\">",
	list.bjsj,
"									</div>",
"							</div>",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd\">",
"									<p class=\"gray\">",
	list.cdjyxm,
"										</p>",
"								</div>						",
"								<div class=\"weui-cell__ft \"  >已提交 <span class=\"tjno\"></span></div>							 ",
"							</div>",
"							</div>",
"							<div class=\"weui-cell__ft\">	",
"							</div>",
"						</a>"].join("");
					}else if(list.type ==4 ){
						
						str+=["<a  class=\"weui-cell weui-cell_swiped container4\" >",
"							<input type=\"hidden\" class=\"sjdbh\" value=\"",
list.sjdbh,
"							\"/>",
"							<input type=\"hidden\" class=\"type\" value=\"",
list.type ,
"							\"/>",
"							<input type=\"hidden\" class=\"before\" value=\"",
list.before,
"							\"/>",
"							<div class=\"weui-cell__bd  myellow\" >           ",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd Bj_name\">",
"									<p>",
	list.bjrxm,
"									</p>",
"								</div>",
"								<div class=\"weui-cell__ft black\">",
	list.bjsj,
"									</div>",
"							</div>",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd\">",
"									<p class=\"gray\">",
	list.cdjyxm,
"										</p>",
"								</div>						",
"								<div class=\"weui-cell__ft \"  >未审批 <span class=\"spno\"></span></div>							 ",
"							</div>",
"							</div>",
"							<div class=\"weui-cell__ft\">	",
"							</div>",
"						</a>"].join("");
					}else if(list.type == 5){

						str+=["<a  class=\"weui-cell weui-cell_swiped container5\" >",
"							<input type=\"hidden\" class=\"sjdbh\" value=\"",
list.sjdbh,
"							\"/>",
"							<input type=\"hidden\" class=\"type\" value=\"",
list.type ,
"							\"/>",
"							<input type=\"hidden\" class=\"before\" value=\"",
list.before,
"							\"/>",
"							<div class=\"weui-cell__bd  myellow\" >           ",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd Bj_name\">",
"									<p>",
	list.bjrxm,
"									</p>",
"								</div>",
"								<div class=\"weui-cell__ft black\">",
	list.bjsj,
"									</div>",
"							</div>",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd\">",
"									<p class=\"gray\">",
	list.cdjyxm,
"										</p>",
"								</div>						",
"								<div class=\"weui-cell__ft \"  >已审批 <span class=\"spyes\"></span></div>							 ",
"							</div>",
"							</div>",
"							<div class=\"weui-cell__ft\">	",
"							</div>",
"						</a>"].join("");
					}else if(list.type == 6){
						str+=["<a  class=\"weui-cell weui-cell_swiped container6\" >",
"							<input type=\"hidden\" class=\"sjdbh\" value=\"",
list.sjdbh,
"							\"/>",
"							<input type=\"hidden\" class=\"type\" value=\"",
list.type ,
"							\"/>",
"							<input type=\"hidden\" class=\"before\" value=\"",
list.before,
"							\"/>",
"							<div class=\"weui-cell__bd  myellow\" >           ",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd Bj_name\">",
"									<p>",
	list.bjrxm,
"									</p>",
"								</div>",
"								<div class=\"weui-cell__ft black\">",
	list.bjsj,
"									</div>",
"							</div>",
"							<div class=\"weui-cell\">",
"								<div class=\"weui-cell__bd\">",
"									<p class=\"gray\">",
	list.cdjyxm,
"										</p>",
"								</div>						",
"								<div class=\"weui-cell__ft \"  >已作废 <span class=\"jqno\"></span></div>							 ",
"							</div>",
"							</div>",
"							<div class=\"weui-cell__ft\">	",
"							</div>",
"						</a>"].join("");
					}



				});
				$('.weui-cells').html('');
				$('.weui-cells').html(str)
			
	}

	
	$('.search_left_box').on('click', function (e) {		
		$('.my_button').on('click',function(){
			page( $(this).data('day'))

			})
		if ($(this).data('day') == '1') {
			$('.weui-cells').html('')
				  pageNumber = 0;
  				  pageSize = 10;
 				  str = ``;
  				  key = true;
			page( $(this).data('day'))
			
		$(this).data('day','2') 

		$(this).html('昨天')
			
			$(this).removeClass('search_blue')
		} else {
			$('.weui-cells').html('')

			pageNumber = 0;
  				  pageSize = 10;
 				  str = ``;
  				  key = true;
			page( $(this).data('day'))
			// $.ajax({
			// url: base_path + '/jumppolicelist/yeserday',
			// type: 'post',
			// data: { 'day': $(this).data('day'), "openid": $('#openid').val() },
			// dataType: 'json',
			// success: function (msg) {
			// 	console.log(msg)
			// 	if(msg.length == 0){
			// 	$('.img_load').addClass('img_show')	
			// 	}else{
			// 		Strfn(msg)
			// 		$('.img_load').removeClass('img_show')	

			// 	}
		
			
			// }})
			console.log(	$(this).data('day'))
			$(this).data('day','1')
			console.log(	$(this).data('day'))
			$(this).html('今日')
			
			$(this).addClass('search_blue')
	
		}
		

		

	})

	console.log( $('#time1').val());
	console.log( $('#time2').val());

	$('.search_right span').on('click', function (e) {
		pageNumber = 0;
  		pageSize = 10;
 		str = ``;
  		key = true;
		page2( $('#time1').val(),$('#time2').val())
	
	
	})
	
		$('.my_button').on('click',function(){
			page( $('#time1').val(),$('#time2').val())

			})
	  

$(function(){
	$('body').delegate('a.weui-cell','click',function(e){
        var sjdbh=$(this).find('.sjdbh').val()
		var type=$(this).find('.type').val()
		var before=$(this).find('.before').val()

	   console.log(type)
	   console.log(before)
        
        if(type==1||type==2){
        	$.showLoading();
        	  window.location.href="<%=basePath%>wx/querypolice/querypolice?openid=${openid}&sjdbh="+sjdbh+"&jump=1&before="+before;	
        }else if(type==3||type==4){
        	$.showLoading();
        	window.location.href="<%=basePath%>wx/querypolice/queryalarmlist2?openid=${openid}&sjdbh="+sjdbh+"&rzdj=5&jump=1&before="+before;
        }else{
            $.showLoading();
        	window.location.href="<%=basePath%>wx/querypolice/queryalarmlist3?openid=${openid}&sjdbh="+sjdbh+"&rzdj=5&jump=1&before="+before;	
        }	  
        		
	})
	if($('.gray').html()=='null'){
		$('.gray').html('暂无手机号')
	}
})
</script>

</html>

