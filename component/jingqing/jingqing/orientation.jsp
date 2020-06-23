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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Geolocation Components Demo - zoom effect</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,
    minimum-scale=1,maximum-scale=1,user-scalable=no">
    <style>
        * {
            margin: 0;
            padding: 0;
            border: 0;
        }

        body {
            position: absolute;
            width: 100%;
            height: 100%;
        }

        #geoPage,
        #markPage {
            position: relative;
        }
    </style>
</head>

<body>
    <!--  通过 iframe 嵌入前端定位组件，此处没有隐藏定位组件，使用了定位组件的在定位中视觉特效  -->
<!--    <iframe id="geoPage" width="100%" height="30%" frameborder=0 scrolling="no"
        src="https://apis.map.qq.com/tools/routeplan/?key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu&effect=zoom">
		</iframe> -->


    <!-- 接收到位置信息后 通过 iframe 嵌入位置标注组件 -->
  <iframe id="mapPage" width="100%" height="100%" frameborder=0
    src="https://apis.map.qq.com/tools/locpicker?search=1&type=1&key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu">
</iframe>
</body>

    <script type="text/JavaScript">
		   window.addEventListener('message', function(event) {
        // 接收位置信息，用户选择确认位置点后选点组件会触发该事件，回传用户的位置信息
        var loc = event.data;
        if (loc && loc.module == 'locationPicker') {//防止其他应用也会向该页面post信息，需判断module是否为'locationPicker'
          console.log('location', loc);
        }
		
    }, false);
     </script>
</html>