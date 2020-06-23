<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>已接处的警情</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weui_biaodan.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/biaodan.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/grlist_bd.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/css/Detailspage.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/myweui.css">

    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/basepath.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/city-picker.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jquery.validate.min.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/qrcode.min.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai.js"></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/js/jiazai2.js"></script>
    <script src='<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/video.js'></script>
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/regular.js"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
    <!-- <script src="//cdn.bootcss.com/eruda/1.4.0/eruda.min.js"></script>
    <script>eruda.init();</script> -->
    <style>
      
        /*.weui-prompt-input{*/
            /*height: 60px;*/
        /*}*/
        #video .video_box span{
            z-index: 100;
        }
		.weui-cells_form{
			padding: 0;

		}
        .zhegai{
            z-index: 1000;
        }
        footer{
            height: auto;
        }

        .inherit{
            position: inherit;
        }

        .Center img{
            position: fixed;
            z-index: 1100;
            left:50%;
            top: 50%;
            height: 0;
            transform: translate(-50%,-50%);
        }

        .bolck_show{
            display: block;
        }

        #qrcode{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .or_content{
            width: 100%;
            padding: 5px;
            height: 80px;
            font-size: 14px;
        }
        .text12{
            margin-top:20px;
            font-size: 12px;
            padding:5px 20px;
            background-color: #fff;
        }
    /*jqdw 重新定位*/
        a{
            text-decoration: none;
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
        .box{
            line-height: 40px;
            width: 100%;
            position: absolute;
            bottom: 0;
            color: #fff;
            background-color: #6ba6e9;
            text-align: center;
            cursor: pointer;
        }
        .container1{
            display: none;
            width: 100%;
            height: 100%;
        }

		/*新增---------------------------------*/
		.weui-cell{
			justify-content: space-between;
		}
		.img_i_base2{position: relative;width: 30px;height: 30px;cursor: pointer;}
		.img_i_base2:before{
			content: '';
			width: 30px;
			position: absolute;
			height: 30px;
			background: url('http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/gen1.png') no-repeat center;
			background-size: 100% 100%;
			left: 50%;
			top: 50%;
			transform: translate(-50%,-50%);
		}
		#xcclxk{
			height: 190px;
			overflow: hidden;
			/* transform: rotateZ(0deg); */
			/* transition: all 1s; */
		}
			#xcclxk .img_i_base2{
				transform: rotateZ(-90deg);
				transition: all 0.5s;
			}
		#xcclxk .xuanz{
			transform: rotateZ(0deg);
		}
		.weui-cell_switch{
			background-color: #fff;
			margin-top: 40px;
		}
		.weui-cell{
			padding: 10px 20px;
		}
		.textred{
			color: red;
		}
		.textblue{
			color: royalblue;
		}
        .weui-switch-cp__input:checked ~ .weui-switch-cp__box, .weui-switch:checked{
            background-color: rgb(88, 174, 255);
            border: none;
        }
        .weui-count .weui-count__decrease::after, .weui-count .weui-count__decrease::before{
            background-color: rgb(88, 174, 255) ;
        }
        .weui-count .weui-count__btn{
            border-color: rgb(88, 174, 255);
        }
        .weui-count .weui-count__increase{
            background-color: rgb(88, 174, 255) ;
        }
        #qrcode{
            padding: 10px;
            background-color: #fff;
        }
        #qrcode  h5{
            padding: 5px 0;
            padding-top: 0;
            text-align: center;
            font-size: 16px;
            /*color: rgb(88, 174, 255);*/
        }


     .my_preview{
          display:none;

      }
      .history{
			position: fixed;
			width: 50px;
			height: 50px;
			right: 5%;
			bottom: 10%;
			background: url('http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/ks.png') no-repeat center;
			background-size: 100% 100%;
			z-index: 9999999;
			opacity: 1;
		}
		.history_tg{
			background: url('http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/ZT.png') no-repeat center;
			background-size: 100% 100%;
		}
            
            .xcfs_yw{
                display: none
            }
        
    </style>
</head>

<body>
    <!-- 定位 -->
    <div class="history">
    </div>
    <div class="container1">

        <a class="box" href="#dldw">
            确定
        </a>

        <iframe id="mapPage" width="100%" height="100%" frameborder=0
                src="https://apis.map.qq.com/tools/locpicker?search=1&type=1&zoom=16&key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu${lat_lng}">
        </iframe>

    </div>
    <!-- ------------------------------ -->
<div class="container2">
    <div class="zhegai">
            <div  id="qrcode">
                <h5> 签收码 </h5>
            </div>
    </div>
    <iframe style="display: none" id="geoPage" width="100%" height="0%" frameborder=0 scrolling="no"
            src="https://apis.map.qq.com/tools/geolocation?key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu&effect=zoom"></iframe>
    <iframe style="display: none"    id="markPage" width="100%" height="0%" frameborder=0 scrolling="no" src=""></iframe>
    <div class="weui-tab">
        <div class="weui-navbar">
            <a class="weui-navbar__item weui-bar__item--on" href="#tab1">
                处警单
            </a>
            <a class="weui-navbar__item" href="#tab2">
                报警信息
            </a>
        </div>

        <div class="weui-tab__bd">

            <div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
                <div class="textred text12">
                    <p >1.提交时请注意视频与照片是否已经添加</p>
                    <p >2.死亡人数，受伤人数，直接经济损失，物证份数请输入数字 </p>
                    <p >3.请先进行警情地址确认 </p>

                </div>
                <h1>上传视频材料</h1>
                <div class="weui-cells   weui-cells_form video">
                    <div class="weui-cell">
                        <div class="weui-cell__hd block">
                            <span>上传视频</span>
                            <span class="tianjia video_btn"></span>
                        </div>
                    </div>
                    <form id="video" name="video" method="post" accept="video/*"	enctype="multipart/form-data" target="emp_fj" action="http://lywjw.cn/lyswjw_wechat/wx/wechatcall/vedio?openid=${openid}&oldspfs=0&sjdbh=${sjdbh}">
	                <input type="hidden" name="spfs" class="inp_hidden" > 
                         <input  type="submit" class="video_submit"  style="display: none">
		    </form>
                    <div style="display: none">
                        <iframe id="emp_fj" name="emp_fj"></iframe>
                    </div>
                </div>
                <h1>上传图片材料</h1>
                <div class="weui-cells   weui-cells_form">
                    <div class="container">
                        <div class="weui_cells weui_cells_form">
                            <div class="weui_cell">
                                <div class="weui_cell_bd weui_cell_primary">
                                    <div class="weui_uploader">
                                        <div class="weui_uploader_hd weui_cell">
                                            <div class="weui_cell_bd weui_cell_primary">上传现场照片
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
                            <div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
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
                <!-- <h1>${lat_lng}</h1> -->
                <form action="#" method="post" id='signupForm'>
                    <section>
                        <h1>案发地点</h1>
                        <div class="weui-cells weui-cells_form">
                        
                        <input id='sjdbh' type="hidden" name="sjdbh" value="${sjdbh}" >
                        <input id='openid' type="hidden" name="openid" value="${openid}" >
                        <input id='alarmlistid' type="hidden" name="alarmlistid" value="${alarmlistid}" >
                                               
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">案发场所类别：</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" id="afcsType" required name="afcslb"  placeholder="请先选择案发场所类别">
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">案发场所类型：</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" id="afType" required name="afcslx" placeholder="请选择案发场所类型" readonly>
                                </div>
                            </div>
                        </div>
                        <h1>地理定位</h1>
                        <div class="weui-cells   weui-cells_form video">
                            <div class="weui-cell">
                                <div class="weui-cell__hd block">
                                    <span>重新定位案发地点</span>
                                      <span id="dldw" class="dldw"></span>
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd block">
                                    <textarea class="gird  or_content" id="afdlwz" name="afdlwz"></textarea>
                                </div>

                            </div>
                        </div>
                        <h1>现场处理情况</h1>
                        
                        <input id='sjdbh' type="hidden" name="sjdbh" value="${sjdbh}" >
                        <input id='openid' type="hidden" name="openid" value="${openid}" >
                        
                        <div class="weui-cells weui-cells_form" id="xcclxk">
                            <!-- <video autoplay></video> -->
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">现场处理情况说明:</label></div>
								<i class="weui-icon-warn weui-icon_msg-primary imgwarn img_i_base2" style='float: right;' ></i>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__bd">
                                    <textarea class="weui-textarea" name="xcclqk" id="xcclqk" placeholder="请输入处警情况"
                                              rows="5"></textarea>
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">死亡人数:</label></div>
                                <div class="weui-cell__bd">

                                    <div class="weui-count">
                                        <a class="weui-count__btn weui-count__decrease"></a>
                                        <input class="weui-count__number" type="text" value="0" id="swrs" name="swrs" style="width: 3rem">
                                        <a class="weui-count__btn weui-count__increase"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">受伤人数:</label></div>
                                <div class="weui-cell__bd">
                                    <div class="weui-count">
                                        <a class="weui-count__btn weui-count__decrease"></a>
                                        <input class="weui-count__number" type="text" value="0" id="ssrs" name="ssrs" style="width: 3rem">
                                        <a class="weui-count__btn weui-count__increase"></a>
                                    </div>                               
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">直接经济损失:</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" type="text" name="zjjjss" id="zjjjss" required placeholder="0" value="0" >
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">到场时间:</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" type="text" id="timeThree" readonly name="ddxcsj" required
                                           placeholder="请选择日期">
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">案发开始时间:</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" type="text" id="time" name="afsj" required
                                           placeholder="请选择日期">
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">案发结束时间:</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" type="text" id="timeTwo" name="afjssj" required
                                           placeholder="请选择日期">
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">现场证据:</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" type="text" id="yes_no" name="xczj" required
                                           placeholder="有/无"  value="无" date_values="2">
                                </div>
                            </div>
                            <div class="xcfs_yw">
                                    <!-- <div class="weui-cell">
                                            <div class="weui-cell__hd"><label class="weui-label">照片份数:</label></div>
                                            <div class="weui-cell__bd">
            
                                                <div class="weui-count">
                                                    <a class="weui-count__btn weui-count__decrease"></a>
                                                    <input class="weui-count__number" type="text" value="0" name="zpfs" style="width: 3rem">
                                                    <a class="weui-count__btn weui-count__increase"></a>
                                                </div>                                 
                                            </div>
                                        </div>
                                        <div class="weui-cell">
                                                <div class="weui-cell__hd"><label class="weui-label">视频份数:</label></div>
                                                <div class="weui-cell__bd">
                
                                                    <div class="weui-count">
                                                        <a class="weui-count__btn weui-count__decrease"></a>
                                                        <input class="weui-count__number" type="text" value="0" name="spfs" style="width: 3rem">
                                                        <a class="weui-count__btn weui-count__increase"></a>
                                                    </div>                                 
                                                </div>
                                            </div> -->
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">物证份数:</label></div>
                                <div class="weui-cell__bd">

                                    <div class="weui-count">
                                        <a class="weui-count__btn weui-count__decrease"></a>
                                        <input class="weui-count__number" type="text" value="0" id="zwfs" name="zwfs" style="width: 3rem">
                                        <a class="weui-count__btn weui-count__increase"></a>
                                    </div>                                 
                                </div>
                            </div>
                        </div>

						<div class="weui-cell weui-cell_switch">
						        <div class="weui-cell__bd">是否填写当事人和见证人信息</div>
						        <div class="weui-cell__ft">
						            <input class="weui-switch" type="checkbox">
						        </div>
						    </div>
                        <h1 class="djshow">当事人</h1>
                        <div class="weui-cells weui-cells_form  xinxi new_one">
                            <div class="weui-cell">
                                <div class="weui-cell__hd block">
                                    <span>当事人信息</span>
                                    <span class="tianjia tj_one"></span>
                                </div>
                            </div>
                            <div class="weui-cells weui-cells_form">
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label">姓名：</label>
                                    </div>
                                    <div class="weui-cell__bd padr_40">
                                        <input class="weui-input new_xm_one"  name="new_xm_one" placeholder="请输入姓名">
                                    </div>
                                </div>
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label">联系电话：</label>
                                    </div>
                                    <div class="weui-cell__bd padr_40">
                                        <input class="weui-input new_dh_one"  name="new_dh_one" placeholder="请输入电话">
                                    </div>
                                </div>
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label font_300">身份证号码/现住地址/其他:</label>
                                    </div>
                                </div>
                                <div class="weui-cell">
                                    <div class="weui-cell__bd">
                                        <textarea class="weui-textarea new_dzs_one" name="new_dzs_one"
                                                  placeholder="请输入身份证号码/现住地址/其他" rows="5"></textarea>
                                    </div>
                                </div>

                                <div class="weui-cells   weui-cells_form">
                                        <div class="container">
                                            <div class="weui_cells weui_cells_form">
                                                <div class="weui_cell">
                                                    <div class="weui_cell_bd weui_cell_primary">
                                                        <div class="weui_uploader">
                                                            <div class="weui_uploader_hd weui_cell">
                                                                <div class="weui_cell_bd weui_cell_primary">上传当事人照片
                                                                </div>
                                                                <i class="weui-icon-warn weui-icon_msg-primary dsr_img_i_base1"></i>
                                                            </div>
                                                            <div class="weui_uploader_bd">
                                                                <ul class="weui_uploader_files dsr1">
                                                                </ul>
                                                                <div class="weui_uploader_input_wrp">
                                                                    <input class="weui_uploader_input dsr_js_file1" type="file" name="img"
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
                                                <div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
                                                </div>
                                                <div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
                                                <div class="weui_dialog_ft">
                                                    <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="imgshow dsr_imgshow_base1">
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
                                       
        
                        <h1 class="djshow">见证人</h1>
                        <div class="weui-cells weui-cells_form  xinxi new_two">
                            <div class="weui-cell">
                                <div class="weui-cell__hd block">
                                    <span>见证人信息</span>
                                    <span class="tianjia tj_two"></span>
                                </div>
                            </div>
                            <div class="weui-cells weui-cells_form">
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label">姓名：</label>
                                    </div>
                                    <div class="weui-cell__bd padr_40">
                                        <input class="weui-input new_xm_two"  name="new_xm_two" placeholder="请输入姓名">
                                    </div>
                                </div>
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label">联系电话：</label>
                                    </div>
                                    <div class="weui-cell__bd padr_40">
                                        <input class="weui-input new_dh_two"  name="new_dh_two" placeholder="请输入电话">
                                    </div>
                                </div>
                                <div class="weui-cell">
                                    <div class="weui-cell__hd"><label class="weui-label font_300">身份证号码/现住地址/其他:</label>
                                    </div>
                                </div>
                                <div class="weui-cell">
                                    <div class="weui-cell__bd">
                                        <textarea class="weui-textarea new_dzs_two" name="new_dzs_two"
                                                  placeholder="请输入身份证号码/现住地址/其他" rows="5"></textarea>
                                    </div>
                                </div>
                                <div class="weui-cells   weui-cells_form">
                                        <div class="container">
                                            <div class="weui_cells weui_cells_form">
                                                <div class="weui_cell">
                                                    <div class="weui_cell_bd weui_cell_primary">
                                                        <div class="weui_uploader">
                                                            <div class="weui_uploader_hd weui_cell">
                                                                <div class="weui_cell_bd weui_cell_primary">上传见证人照片
                                                                </div>
                                                                <i class="weui-icon-warn weui-icon_msg-primary jzr_img_i_base1"></i>
                                                            </div>
                                                            <div class="weui_uploader_bd">
                                                                <ul class="weui_uploader_files jzr1">
                                                                </ul>
                                                                <div class="weui_uploader_input_wrp">
                                                                    <input class="weui_uploader_input jzr_js_file1" type="file" name="img"
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
                                                <div class="weui_dialog_hd"> <strong class="weui_dialog_title">警告</strong>
                                                </div>
                                                <div class="weui_dialog_bd">弹窗内容，告知当前页面信息等</div>
                                                <div class="weui_dialog_ft">
                                                    <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="imgshow jzr_imgshow_base1">
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
                       
                        <h1>警情分类</h1>
                        <div class="weui-cells weui-cells_form">
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">警情类别:</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input"  id="category" required name="jqlbdm" data-values='' placeholder="请选择警情类型">
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">警情类型：</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" id="jqType" required name="jqlxdm" data-values='' placeholder="请选择警情类型">
                                </div>
                            </div>
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">警情细类：</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" id="particular" required name="jqxldm" data-values='' placeholder="请选择警情细类" readonly>
                                </div>
                            </div>
                        </div>
                        
                        <h1>处理结果</h1>
                        <div class="weui-cells weui-cells_form">
                            <div class="weui-cell">
                                <div class="weui-cell__hd"><label class="weui-label">处理结果:</label></div>
                                <div class="weui-cell__bd">
                                    <input class="weui-input" required  id="jqcljg" name="jqcljg" placeholder="请选择处理结果">
                                </div>
                            </div>
                        </div>


                    </section>

                    <footer>
                        <div class="weui-form-preview__ft">
                            <a class="weui-form-preview__btn weui-form-preview__btn_default Center" style="background-color: #fdb821;color: #fff" href="javascript:">签收码</a>
                            <a class="weui-form-preview__btn weui-form-preview__btn_primary" id="submit" style="background-color: rgb(88, 174, 255);color: #fff" href="javascript:">提交</a>
                            <a class="weui-form-preview__btn weui-form-preview__btn_primary show" id="sign" style="background-color: #fd6738;color: #fff" href="javascript:">民警代签</a>
                        </div>
                    </footer>

                </form>
            </div>
        


            <div id="tab2" class="weui-tab__bd-item">

                <div class="container">         
                    <div class="detail_boxs">
			<div class="detail_box detail_list">
				<div>
					<span class="b_text">报警人：</span><span class="s_text">${record.bjrxm}</span>
				</div>
                <div>
	                        <span class="b_text"> 联系电话:</span><span class="s_text">
                            <a href="tel:${record.lxdh}">${record.lxdh}</a></span>
				</div>				
			</div>
			<div class="detail_box detail_list">
				<div>
					<span > 报警时间:</span>
				</div>
                        <div><span>${record.bjsj}</span>
				</div>	
								
			</div>

               <!-- <div class="detail_box detail_area  orientation">
				<div class="text_area b_text">联系地址:</div>
				<div class="text_area s_text">${record.lxdz}</div>
			</div>  -->

            <div class="detail_box detail_area  orientation">
				<div class="text_area b_text">事件单编号:</div>
				<div class="text_area s_text">${record.sjdbh}</div>
			</div>

                        <div class="detail_box detail_area  orientation">
				<div class="text_area b_text">报警地址:</div>
				<div class="text_area s_text">${record.bjdz}</div>
			</div>
                        <div class="detail_box detail_area">
                            <div class="text_area b_text">报警内容:</div>
                            <div class="text_area s_text">${record.bjnr}</div>
                        </div>

                    </div>
                </div>

</body>
            </div>

        </div>
    </div>

</div>

	<div class="weui-mask weui-mask--visible my_preview"></div>
	<div class="weui-dialog weui-dialog--visible my_preview">
		<div class="weui-dialog__hd">
			<strong class="weui-dialog__title">代签原因类型</strong>
		</div>
		<div class="weui-dialog__bd">
			<p class="weui-prompt-text"></p>
			<div class="weui-cells weui-cells_form">
				<div class="weui-cells__title" style="text-align:left">代签类型:</div>
				<div class="weui-cells">
					<div class="weui-cell">
						<div class="weui-cell__bd">
							<input  id="dqtype" type="text" name="dqtype"
								placeholder="请选择"  style="width:100%;height:30px">
						</div>
					</div>
				</div>
				<div class="weui-cells__title" style="text-align:left">代签原因:</div>
				<div class="weui-cells weui-cells_form"  >
					<div class="weui-cell">
						<div class="weui-cell__bd">
							<textarea  id="reason" name="reason" placeholder="请输入原因(已选原因类型可为空)" rows="5"  style="width:95%;"></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="weui-dialog__ft">
			<a href="javascript:;" class="weui-dialog__btn default  del_close">取消</a>
			<a href="javascript:;"
				class="weui-dialog__btn primary newsubmit newblue_color">确定</a>
		</div>

	</div>



</body>
<script
	src='<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/video.js'></script>
<!-- <script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/dw.js"></script> -->
<script
	src="<%=basePath%>webpage/lywjw/lyswjwwx/component/jingqing/js/grlist_bd_2.js"></script>

<script>

$('.navCar span').on('click', function () {
	var openid=$("#openid").val();
    /* window.location.href = "orientation?openid=${openid}"; */
	window.location.href="<%=basePath%>wx/jumppolice/navCar?openid=${openid}&xzb=${record.xzb}&yzb=${record.yzb}&sjdbh=${record.sjdbh}";
})


</script>


<script type="text/javascript">

    var obj={};
        var latitude = '';
        var longitude = '';

                        wx.config({
                            debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
                            appId: '${appId}', // 必填，公众号的唯一标识
                            timestamp: "${timestamp}", // 必填，生成签名的时间戳
                            nonceStr: '${nonceStr}', // 必填，生成签名的随机串
                            signature: '${signature}',// 必填，签名，见附录1
                            jsApiList: ['getLocation'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
                        });
    
                        wx.ready(function () {
                            wx.getLocation({
                                type: 'gcj02', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
                                success: function (res) {
                                    latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
                                    longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
                                    var speed = res.speed; // 速度，以米/每秒计
                                    var accuracy = res.accuracy; // 位置精度
                                    console.log(longitude)
                                    //jiazaiHid()
                                      
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
                                            
                                        }
    
                                    })                               
                                }
                            });
                        });
                        
                       
                            
    
    </script>

<script type="text/JavaScript">
    let str='';
    let dwobj={};
    window.addEventListener('message', function(event) {
        // 接收位置信息，用户选择确认位置点后选点组件会触发该事件，回传用户的位置信息
        var loc = event.data;
        if (loc && loc.module == 'locationPicker') {
            //防止其他应用也会向该页面post信息，需判断module是否为'locationPicker'

            console.log('location', loc);
            $('.or_content').text(loc.poiaddress)
            dwobj=loc.latlng;
        }
        str=''
        str=loc.poiaddress;
    }, false);

    $('.dldw').on('click',function () {
        $(".container1").css('display','block')
        $(".container2").css('display','none')

    })
    $('.box').on('click',function () {
        $(".container2").css('display','block')
        $(".container1").css('display','none')
    })


    var MAX = 100, MIN = 0;
    $('.weui-count__decrease').click(function (e) {
        var $input = $(e.currentTarget).parent().find('.weui-count__number');
        var number = parseInt($input.val() || "0") - 1
        if (number < MIN) number = MIN;
        $input.val(number)
    })
    $('.weui-count__increase').click(function (e) {
        var $input = $(e.currentTarget).parent().find('.weui-count__number');
        var number = parseInt($input.val() || "0") + 1
        if (number > MAX) number = MAX;
        $input.val(number)
    })




</script>






</html>