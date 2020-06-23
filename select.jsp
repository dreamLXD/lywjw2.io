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
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>临沂微警务</title>
       <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/list.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weuix.css">

    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/footer.css">

    <script src="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
<script src="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>

    <style>
   			.jq{
   			position: absolute;
   			top: -.4em;
   			right: 0.7em;
   			}
               .list:hover{
                background-color: rgb(230, 230, 230);
            font-weight: bold;
               }
               a:hover {
            background-color:  rgb(230, 230, 230);
            font-weight: bold;
        }
    </style>
    <!-- <script src='//cdn.bootcss.com/eruda/1.4.0/eruda.min.js'></script>
    <script>
        eruda.init()
    </script> -->
</head>

<body>
    <section class="fixclear">
      <%--   <a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/chaxun_xm.html" class="list">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon5.png" alt="">
            <p class="gen">
                出入境证件办理进度
            </p>
        </a>
        <a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/chaxun_xm.html" class="list">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon1.png" alt="">
            <p class="gen">
                车辆违法信息进度
            </p>
        </a>
        <a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/chaxun_xm.html" class="list">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon2.png" alt="">
            <p class="gen">
                驾驶证信息查询
            </p>
        </a>
        <a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/chaxun_xm.html" class="list">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon3.png" alt="">
            <p class="gen">
                网办事项进度查询
            </p>
        </a>
        <a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/chaxun_xm.html" class="list">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon4.png" alt="">
            <p class="gen">
                证明开具结果查询
            </p>
        </a>
        --%>

<%-- 		 <a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/PeopleAlarmSituationInquire/grjq.html" class="list">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon18.png" alt="">
            <p class="gen">
                报警反馈查询
            </p>
        </a> --%>

         <a onclick="Query('HouseholdQuery')" class="list">
            <span></span>
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon183.png" alt="">
            <p class="gen">
                户政办理查询
            </p>
        </a>
         <a onclick="Query('AlarmProgressList')" class="list">
            <span></span>
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/bjcx.png" alt="">
            <p class="gen">
                报警信息查询
            </p>
        </a>
        <a  onclick="ajxxcx()"  class="list">
            <span></span>
			<!-- <a href='<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=7' class="list"> -->
				<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/ajxxcx.png" alt="">
				<p class="gen">
					案件信息查询
				</p>
            </a>
            <a onclick="sqcx()" class="list">
            <span></span>
				<!-- <a href='<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=11' class="list"> -->
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/sqcx.png" alt="">
					<p class="gen">
						诉求查询
					</p>
                </a>
                 <a onclick="clhpcx()" class="list">
            <span></span>

					<!-- <a href='<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=9' class="list"> -->
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/clhpcx.png" alt="">
						<p class="gen">
							车辆号牌查询
						</p>
                    </a>
                    <a  onclick="EMScx()"   class="list">
            <span></span>

				<!-- <a href='<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=10' class="list"> -->
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/ems.png" alt="">
					<p class="gen">
						EMS查询
					</p>
                </a>
                <a  onclick="wdcx()"  class="list">
            <span></span>

					<!-- <a href='<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=12' class="list"> -->
						<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/wdx.png" alt="">
						<p class="gen">
							网点查询
						</p>
					</a>
					
    </section>
	<c:if test="${rzdj eq 1 }">
    <footer class="fixclear BottomOne">
        <a onclick="pageswitch('index')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt1.png" alt="">
            <p>首页</p>
        </a>

        <a onclick="pageswitch('tab')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn3.png" alt="">
            <p>办理</p>
        </a>
        <a onclick="pageswitch('select')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_4.png" alt="">
            <p class="textb">查询</p>
        </a>
        <a onclick="pageswitch('news')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn5.png" alt="">
            <p>资讯</p>
        </a>
        <a onclick="pageswitch('police')"  >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box/btn6.png" alt="">
            <span class="weui-badge jq"   <c:if test="${policeNum4 eq 0 }">style="display:none" </c:if>>
                       
                        ${policeNum4}                   
                   
                </span>
            <p>警务</p>
        </a>
        <!-- <a href="LIST.html">
            <img src="img/new/bnt2.png" alt="">
            <p>个人中心</p>
        </a> -->
    </footer>
	</c:if>
	<c:if test="${rzdj eq 0 }">
	<footer class="fixclear BottomTwo">
        <a onclick="pageswitch('index')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt1.png" alt="">
            <p>首页</p>
        </a>

        <a onclick="pageswitch('tab')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn3.png" alt="">
            <p>办理</p>
        </a>
        <a onclick="pageswitch('select')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_4.png" alt="">
            <p class="textb">查询</p>
        </a>
        <a onclick="pageswitch('news')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn5.png" alt="">
            <p>资讯</p>
        </a>
       
        <!-- <a href="LIST.html">
            <img src="img/new/bnt2.png" alt="">
            <p>个人中心</p>
        </a> -->
    </footer>
	</c:if>
</body>
<script>

	function jumpInstructions(name){
        $.showLoading('加载中...');
        hide()
	 window.location.href="<%=basePath%>wx/jumpInstructions/"+name+"?openid=${openid}";
	}

	function pageswitch(name){
        $.showLoading('加载中...');
        hide()
	window.location.href="<%=basePath%>wx/login/PageJump?openid=${openid}&PageName="+name;
	}
	
	function Query(name){
        $.showLoading('加载中...');
        hide()
		window.location.href="<%=basePath%>wx/Query/"+name+"?openid=${openid}";
	}
// <%-- 	href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/HouseholdInquire/HouseholdList.html" --%>
	    //----------------------------------------------------------
        //新增点击事件
       function ajxxcx() {//案件信息查询
        $.showLoading('加载中...');
        hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'7'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/ZFGK/app/ajblgk/index.html?sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 }) 
        }
        
         function sqcx() {//诉求查询
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'11'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/demandsclient/toQuery.shtml?sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 }) 
        }
         function clhpcx() {//车辆号牌查询
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'9'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/wxcustomizelicenseplate/index.shtml?sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 }) 
        }
        function EMScx() {//EMS查询
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'10'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/emssearch/toSearch.shtml?sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 }) 
        }
       function wdcx() {//网点查询
        $.showLoading('加载中...');
        hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'12'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/wechat/html/map2.html?sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 }) 
        }

        //----------------------------------------------------------
</script>
</html>