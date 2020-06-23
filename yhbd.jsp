<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" /> 
<meta http-equiv="expires" content="0" />
<meta name="viewport" content="width=device-width"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>临沂微警务扫一扫</title>

<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
    <script src="<%=basePath%>webpage/wx/js/jquery.min.js"></script>
	<link rel="stylesheet" href="<%=basePath %>webpage/wx/weui/example.css"/>
	<link rel="stylesheet" href="<%=basePath %>webpage/wx/weui/weui.css"/>
    <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/huise.css">
	
<script type="text/javascript">
wx.config({
    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
    appId: '${appId}', // 必填，公众号的唯一标识
    timestamp:"${timestamp}" , // 必填，生成签名的时间戳
    nonceStr: '${nonceStr}', // 必填，生成签名的随机串
    signature: '${signature}',// 必填，签名，见附录1
    jsApiList: ['scanQRCode'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
});
wx.error(function(res){
	alert( res.errMsg);
});
function toSYS(){
	wx.scanQRCode({
	    needResult: 1, // 默认为0，扫描结果由微信处理，1则直接返回扫描结果，
	    scanType: ["qrCode","barCode"], // 可以指定扫二维码还是一维码，默认二者都有
	    success: function (res) {
	    	
	   		var result = res.resultStr; // 当needResult 为 1 时，扫码返回的结果encodeURIComponent(result)
			
			var data="openid=${openid}&content="+result;
			console.log("result=="+result)
			window.location="http://lywjw.cn/lyswjw_wechat/wx/wechatcall/jumpQRcode?yh_openid=${yh_openid}&sjdbh="+result
	   		$.post("<%=basePath%>wx/test/jumpQRcode",data,function(msg){
	   			
	   			if(msg=='1'){
	   				var $iosDialog1 = $('#iosTrue');
	   				$iosDialog1.fadeIn(200);
	   			}else{
	   				var $iosDialog1 = $('#iosFalse');
	   				$iosDialog1.fadeIn(200);
	   			}
	   		});
		}
	});
}
</script>
</head>

<body style="background-color:#EBEBEB;">
<div data-role="page" class="index" id="index">
<!--		<div class=""><img src="<%=basePath%>webpage/wx/images/saoyisao.png" width="100%"></div> !-->
<!--		<div class="weui-cells__title colorblue" style="color:#19487d;">扫一扫</div>  !-->
		<div class="weui-cells">
					<a class="weui-cell weui-cell_access" href="javascript:;"  onclick="toSYS();">
						<div class="weui-cell__hd"><img src="<%=basePath %>webpage/lywjw/grzx/img/new/sys.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
						<div class="weui-cell__bd">
							<p>扫一扫</p>
						</div><span class="weui-cell__ft"></span>
					</a>
		</div>	
<!--		<div class="weui-cells">
					<a class="weui-cell weui-cell_access" >						
						<div class="weui-cell__bd">
							<p>温馨提示：</p>
							<p>!!!!!!!!!!!!</p>
						</div>
					</a>
		</div>	--!>
		<!-- <div class="weui-cells__title colorblue">方式二（手动填写相关信息绑定）</div>
		<div class="weui-cells">
					<a class="weui-cell weui-cell_access" href="<%=basePath%>wx/wxcontr/writeBD?openid=${openid}">
						<div class="weui-cell__hd"><img src="<%=basePath%>webpage/wx/images/hen.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
						<div class="weui-cell__bd">
							<p>手动绑定</p>
						</div><span class="weui-cell__ft"></span>
					</a>
		</div>	-->
		<!-- 提示信息 -->
			<!--按钮的-->
	    <div id="dialogs">
	        <!--BEGIN iosTrue-->
	        <div class="js_dialog" id="iosTrue" style="display: none;">
	            <div class="weui-mask"></div>
	            <div class="weui-dialog">
	                <div class="weui-dialog__hd"><strong class="weui-dialog__title">绑定结果</strong></div>
	                <div class="weui-dialog__bd">用户绑定成功，所有功能已开放！</div>
	                <div class="weui-dialog__ft">
	         			 <a href="javascript:WeixinJSBridge.call('closeWindow');" class="weui-dialog__btn weui-dialog__btn_primary">返回微信</a>
	                </div>
	            </div>
	        </div>
	        <!--END iosTrue-->
	       <!--BEGIN iosFalse-->
	        <div class="js_dialog" id="iosFalse" style="display: none;">
	            <div class="weui-mask"></div>
	            <div class="weui-dialog">
	                <div class="weui-dialog__hd"><strong class="weui-dialog__title">绑定结果</strong></div>
	                <div class="weui-dialog__bd">很遗憾，绑定失败！请扫描有效证件信息。<br>1、请确保企业营业执照真实有效<br>2、请确保企业为本土企业（在本地注册登记登记）<br>3、请核查该微信号是否已经绑定其他企业</div>
	                <div class="weui-dialog__ft">
	         			 <a href="javascript:WeixinJSBridge.call('closeWindow');" class="weui-dialog__btn weui-dialog__btn_primary">返回微信</a>
	                	 <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary">我知道了</a>
	                </div>
	            </div>
	        </div>
	        <!--END iosFalse-->
	    </div>
</div>
<script type="text/javascript">
    $(function(){
        $('#dialogs').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });
    });
</script>
<jsp:include page="/webpage/wx/layout/wait.jsp" flush="true"/>
</body>
</html>
