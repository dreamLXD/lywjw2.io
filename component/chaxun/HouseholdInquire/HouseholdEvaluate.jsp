﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
        content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 临沂微警务 </title>
        <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/layui-src/dist/css/layui.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/layui-src/dist/layui.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/chaxun/css/myd.css">

</head>

<body>

    <section>

        <form class="frommyd" action="">
            <h3>满意度调查</h3>
            <p>
                欢迎进入临沂微警务进行评价!
            </p>
            <div>
                <div class="checkbox"><span>已解决问题</span><span class="checked dui"></span></div>
                <div class="checkbox"><span>问题解决不完善</span><span class="checked"></span></div>
                <div class="checkbox"><span>问题处理很好</span><span class="checked"></span></div>
                <div class="checkbox"><span>问题处理不及时</span><span class="checked"></span></div>
            </div>

            <div id="test1"></div>
            <h4>我的建议</h4>
            <textarea name="text" id="" cols="30" rows="10"></textarea>
            <input type="submit" value="提交" class="submit" >
        </form>

    </section>






    <script>
        layui.use('form', function () {
            var form = layui.form;

            //监听提交
            form.on('submit(formDemo)', function (data) {
                layer.msg(JSON.stringify(data.field));
                return false;
            });
        });
        layui.use('rate', function () {
            var rate = layui.rate;

            //渲染
            var ins1 = rate.render({
                elem: '#test1',
                length: '5',
                value: '4',
                theme: '#FFB800',
                half: false,
                text: true,
                readonly: false
            });
        });
        $('.checked').on('click', function () {
            if ($(this).hasClass('dui')) {
                $(this).removeClass('dui')
            } else {
                $(this).addClass('dui');
            }
        })
        
       
        $('.submit').on('click', function (e) {
            e.preventDefault();
          let arr=  Array.prototype.slice.call($('.dui').parent().children('span'))
          let newarr=[]
           arr.forEach((item)=>{
            	if($(item).text()){
            		newarr.push($(item).text())	
            	}
            })
            
          
         
            var text=$('textarea').val();
           var length= $('.layui-icon-rate-solid').length
//         	   $('.layui-rate li i').attr('style').length
//             console.log($('.layui-icon-rate-solid').length)
           var checked=newarr;

<%--             window.location.href="<%=basePath%>wx/Query/success?openid=${openid}&id=${id}&text"; --%>
			$.post("<%=basePath%>wx/Query/success","openid=${openid}&id=${id}&text="+text+"&length="+length+"&checked="+checked+"",function(msg){
				if(msg==1){
					window.location.replace(base_path+'/login/PageJump?PageName=index&openid=${openid}');
				}
				 
			})
        })
    </script>
</body>

</html>