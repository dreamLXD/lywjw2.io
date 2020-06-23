<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="fns" uri="/WEB-INF/tlds/fns.tld"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    
 	

    
    <title>新闻详情</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/css/xinwen_content.css">
     <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <style>
    

    
    img{

     width:90% !important; 

     margin:5px  !important;
    }
    p{
    width:95% !important; 
    text-indent:15px !important;
     margin:0  !important;
     
     
    }
    </style>
    <script >

    $(function(){

//         var oid =document.getElementsByTagName('img');
//         for(var i=0,j=oid.length;i<j;i++)
//         if(oid[i].getAttribute('src')==" "){
//         alert("空")
//         }else{
//         alert("有内容")
//         }
       $('p').each((k,item)=>{
    	   console.log($(item))
    	   console.log($(item).html())
    	   if($(item).html()=='&nbsp;'){ 
    		  console.log('adc')
    		   $(item).remove()
    	   }
       })
        

    })
    </script>
</head>
       
<body>
<div class="container">
    <h2>${record.xwbt } </h2>
   
    <p>${fns:unescapeHtml(record.xwnr)}</p>
    

</div>
</body>


</html>