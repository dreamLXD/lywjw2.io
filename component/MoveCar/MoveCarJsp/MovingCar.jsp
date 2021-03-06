﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
        <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
                <meta http-equiv="X-UA-Compatible" content="ie=edge">
                <title>一键移车</title>
                <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
                <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
                <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weui_biaodan.css">
                <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
                <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/MoveCar/css/MoveingCar.css">
                <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
                <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
                <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
                <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/city-picker.js"></script>
                <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
                <script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/MoveCar/js/MovingCar.js"></script>
            
            </head>
            
            <body>
                <input type="hidden" id="openid"  value="${openid}" style="display: none">
            <div class="container1">
                <a class="box" href="javascript:;">
                    确定
                </a>
                <iframe style="display: none" id="geoPage" width="100%" height="0%" frameborder=0 scrolling="no"
                        src="https://apis.map.qq.com/tools/geolocation?key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu&effect=zoom"></iframe>
            
                <iframe id="mapPage" width="100%" height="100%" frameborder=0
                        src="https://apis.map.qq.com/tools/locpicker?search=1&type=1&key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu">
                </iframe>
            </div>
            <div class="container2">
                <div class="zhegai"></div>
                <div class="weui-tab">
                    <div class="weui-tab__bd">
                        <div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
                            <h1 style="background-color: rgb(13, 125, 253);color: #fff;">车辆信息</h1>
                            <div class="weui-cells   weui-cells_form" id="moving">
                                <form action="javascript:;" method="post">
                                    <section>
                                        <div class="weui-cells weui-cells_form ">
                                            <div class="weui-cell">
                                                <div class="weui-cell__hd block">
                                                    <span>待移车车牌号码</span>
                                                </div>
                                            </div>
                                            <div class="weui-cell twoInline">
                                                <div class="weui-cell__bd">
                                                    <input class="weui-input" required name="cphd" id="plate"  data-values="015" value="鲁Q">
                                                </div>
                                                <div class="weui-cell__bd">
                                                    <input class="weui-input" required name="cpend" placeholder="请输入车牌号码">
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </form>
                                <div class="weui-cell">
                                    <div class="weui-cell__hd block">
                                        <span>地理定位</span>
                                        <span class="dldw"></span>
                                    </div>
                                </div>
                                <div class="weui-cell">
                                    <div class="weui-cell__hd block">
                                        <span class="gird">请选择地点</span>
                                    </div>
            
                                </div>
                                <div class="weui-cells   weui-cells_form">
                                    <div class="container">
                                        <div class="weui_cells weui_cells_form">
                                            <div class="weui_cell">
                                                <div class="weui_cell_bd weui_cell_primary">
                                                    <div class="weui_uploader">
                                                        <div class="weui_uploader_hd weui_cell">
                                                            <div class="weui_cell_bd weui_cell_primary"><span style="font-size: 14px">上传现场照片</span>
                                                            </div>
                                                            <i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base1"></i>
                                                        </div>
                                                        <div class="weui_uploader_bd">
                                                            <ul class="weui_uploader_files one">
                                                            </ul>
                                                            <div class="weui_uploader_input_wrp">
                                                                <input class="weui_uploader_input js_file1" type="file" name="img"
                                                                       accept="image/*" multiple="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="weui_dialog_alert" style="display: none;">
                                        <div class="weui_mask"></div>
                                        <div class="weui_dialog">
                                            <div class="weui_dialog_hd"><strong class="weui_dialog_title">警告</strong>
                                            </div>
                                            <div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
                                            <div class="weui_dialog_ft">
                                                <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="imgshow imgshow_base1">
                                        <div>
                                            <p class="title"> 详细介绍 </p>
                                            <!--<img src="../../../img/shili/shili.jpg" alt="">-->
                                            <p class="zhushi">
                                                图片清晰，不超过10兆，最大限制30张图片
                                            </p>
                                            <button>确定</button>
                                        </div>
                                    </div>
                                </div>
            
                            </div>
            
            
            
                        </div>
                        <!-- <div class="add">增加</div> -->
                        <footer>
                            <button>提交</button>
                        </footer>
            
                    </div>
                </div>
            </div>
            
            
            
            
            </body>
            
            <script type="text/JavaScript">
            
                let str='';
                let gird='.gird'
                    
                window.addEventListener('message', function(event) {
                    // 接收位置信息，用户选择确认位置点后选点组件会触发该事件，回传用户的位置信息
                    var loc = event.data;
                    if (loc && loc.module == 'locationPicker') {//防止其他应用也会向该页面post信息，需判断module是否为'locationPicker'
                        console.log('location', loc);
                    }
                    str=''
                    str=loc.poiaddress;
                    console.log(loc["poiaddress"]);
                    $(gird).html(loc["poiaddress"]);
                    obj.lng=loc.latlng.lng;
                    obj.lat=loc.latlng.lat;
                    
                }, false);
            
                // $('.box').on('click',function () {
                //     window.history.back(-1);
                //     // window.location.href='./yjbj.html?'+[str]+''
                // })
            </script>
            <script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/MoveCar/js/dw.js"></script>
            </html>