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
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/xinwen.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/footer.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weuix.css">

    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <script src="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
    <style>
   			.jq{
   			position: absolute;
   			top: -.4em;
   			right: 0.7em;
   			}
               a:hover {
            background-color:  rgb(230, 230, 230);
            /* font-weight: bold; */
        }
        a{
            color: #000
        }
    </style>
</head>

<body>

    <section>

        <div class="list one ">
			 <c:forEach items="${NewsList}" var="news" varStatus="status">
            <a  class="content fixclear  new">
                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/zhou.png" alt="">
                 <input type="hidden"  value="${news.id }"  name = "id"/>
                <div>
                    <p>${news.xwbt}</p>
                    <p><span>${news.fbsj}</span></p>
                </div>
            </a>
			 </c:forEach>
            <!--<a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/xinwen/xinwen_content2.html" class="content fixclear">
                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/zhou.png" alt="">
                <div>
                    <p>联合国教科文组织正式批准临沂沂蒙山为世界地质公园</p>
                    <p><span>山东省公安厅</span><span>2019-02-10 18:12:00</span></p>
                </div>
            </a>
            <a href="<%=basePath%>webpage/lywjw/lyswjwwx/component/xinwen/xinwen_content3.html" class="content fixclear">
                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/zhou.png" alt="">
                <div>
                    <p>孟庆斌调研督导防汛工作</p>
                    <p><span>山东省公安厅</span><span>2019-02-03 8:12:00</span></p>
                </div>
            </a>-->

        </div>
        <div class="list two">
            <div class="content yiwang  fixclear">
                    <span></span>

                <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/yue.png" alt="">
                <div>
                    <p>以往新闻资讯查看</p>
                </div>
            </div>
            <c:forEach items="${PastList }" var="past">
            <a  class="content_list  fixclear old" >
              <input type="hidden"  value="${past.id }"  name = "id"/>
                <div>
                     <p>${past.xwbt}</p>
                    <p><span>${past.fbsj}</span></p>
                </div>
            </a>
			</c:forEach>
        </div>

    </section>
	<c:if test="${rzdj eq 1 }">
   <footer class="fixclear  BottomOne">
        <a onclick="pageswitch('index')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt1.png" alt="">
            <p>首页</p>
        </a>

        <a onclick="pageswitch('tab')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn3.png" alt="">
            <p>办理</p>
        </a>
        <a onclick="pageswitch('select')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn4.png" alt="">
            <p>查询</p>
        </a>
        <a onclick="pageswitch('news')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_5.png" alt="">
            <p class="textb">资讯</p>
        </a>
        <a onclick="pageswitch('police')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box/btn6.png" alt="">
            <span class="weui-badge jq"   <c:if test="${policeNum4 eq 0 &&policeNum eq 0 }">style="display:none" </c:if>>
                
                <c:choose>
                        <c:when test="${dbsz eq '1' && record.rzdj eq '3'}">${policeNum4}</c:when>
                        <c:when test="${dbsz eq '0' && record.rzdj eq '5'}">${policeNum4}</c:when>
                        <c:otherwise>${policeNum}</c:otherwise>
                   
                    </c:choose>
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
        <a onclick="pageswitch('select')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn4.png" alt="">
            <p>查询</p>
        </a>
        <a onclick="pageswitch('news')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_5.png" alt="">
            <p class="textb">资讯</p>
        </a>
       
        <!-- <a href="LIST.html">
            <img src="img/new/bnt2.png" alt="">
            <p>个人中心</p>
        </a> -->
    </footer>
	</c:if>
</body>
<!-- <script>
    $('.yiwang').on('click', function () {
        if ($('.yiwang>div').hasClass('move')) {
            $('.yiwang>div').removeClass('move')
            $('.content_list').css('display', 'none')

        } else {
            $('.yiwang > div').addClass('move');
            $('.content_list').css('display', 'block')
        }
    })
// NewsDetails NowNewsDetails   pastNewsDetails
//  $('a').on('click',function(){
    	
// //     	alert(id);
    
    	

//     	})
$('.old').on('click',function(e){
   	e.preventDefault();
	var id=$(this).find("input[name='id']").val();
// 	alert(id);
	window.location.href="<%=basePath%>wx/login/NewsDetails?openid=${openid}&id="+id;
})
$('.new').on('click',function(e){
	e.preventDefault();
	var id=$(this).find("input[name='id']").val();
// 	alert(id);
	window.location.href="<%=basePath%>wx/login/NewsDetails?openid=${openid}&id="+id;
})
	function pageswitch(name){
	window.location.href="<%=basePath%>wx/login/PageJump?openid=${openid}&PageName="+name;
	}
</script> -->
<script>
        $('.yiwang > div').addClass('move');
         $('.content_list').css('display', 'block')
        $('.yiwang').on('click', function () {
            if ($('.yiwang>div').hasClass('move')) {
                $('.yiwang>div').removeClass('move')
                $('.content_list').css('display', 'none')
    
            } else {
                $('.yiwang > div').addClass('move');
                $('.content_list').css('display', 'block')
            }
        })
  
    $('.old').on('click',function(e){
        $.showLoading('加载中...');
        hide()
           e.preventDefault();
        var id=$(this).find("input[name='id']").val();
    // 	alert(id);
        window.location.href="<%=basePath%>wx/login/NewsDetails?openid=${openid}&id="+id;
    })
    $('.new').on('click',function(e){
        $.showLoading('加载中...');
        hide()
        e.preventDefault();
        var id=$(this).find("input[name='id']").val();
    // 	alert(id);
        window.location.href="<%=basePath%>wx/login/NewsDetails?openid=${openid}&id="+id;
    })

        function pageswitch(name){
        $.showLoading('加载中...');
        hide()
        window.location.href="<%=basePath%>wx/login/PageJump?openid=${openid}&PageName="+name;
        }
        $('footer a').on('click',function(e){
        $.showLoading('加载中...');
        hide()

    }) 
    </script>
</html>