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
    <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/lyswjwwx/css/index2.css">
    <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/lyswjwwx/css/footer.css">
    <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/lyswjwwx/css/weuix.css">

    <style>
   			.jq{
   			position: absolute;
   			top: -.4em;
   			right: 0.7em;
   			}
               nav{
                   display: flex
               }
            nav span{
                padding: 10px 0;
                width: 25%;
                display: block;
            }
            /* 11.20新增 */
		.weui-dialog__hd{
			position: relative;
		}
		.weui-dialog__hd span{
			cursor: pointer;
			position: absolute;
			top: 0;
			right: 0;
			transform: translate(30%,-30%);
			width: 30px;
			height: 30px;
			background:url('<%=basePath%>webpage/lywjw/lyswjwwx/img/error.png') no-repeat center;
			background-size: 100% 100%;
		}
		.weui-dialog{
			overflow:initial;
		}
		.weui-mask.weui-mask--visible{
			visibility:hidden;
		}
		.weui-dialog.weui-dialog--visible{
			visibility:hidden;

		}
        a:hover {
            background-color:  rgb(230, 230, 230);
            font-weight: bold;
        }
        .top_banner>div:hover{
            background-color: rgb(99, 99, 99);
            font-weight: bold;
        }

    </style>
</head>

<body>
    <header>
        <div class="swiper-container" data-space-between='1000' mySwiper.autoplay.running='true'
            data-pagination='.swiper-pagination' data-autoplay="2000">
            <div class="swiper-wrapper">
			
                <div class="swiper-slide"><img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/bj/6.jpg" alt=""></div>
                <div class="swiper-slide"><img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/bj/1.jpg" alt=""></div>
                <div class="swiper-slide"><img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/bj/5.gif" alt=""></div>
            </div>
        </div>
        <section>

            <div class="top_banner">
                <div class='yjnc'>
                    <img src="<%=basePath %>webpage/lywjw/lyswjwwx/img/new/icon_111.png" alt="">
                    <span>一键移车</span>
                </div>
                <div class='zmzx'>
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon180.png" alt="">
                    <span>智能咨询</span>
                </div>
                <div class="jigou">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon_113.png" alt="">
                    <span>机构导航</span>
                </div>
                <div class="yjbaojing">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon_114.png" alt="">
                    <span>一键报警</span>
                </div>
            </div>

            <nav>
                    <span data-id="tab2"  class="bbtm">户政</span>
                <span data-id="tab1">出入境</span>
                <!-- <span data-id="tab3">治安消防</span> -->
                <!-- <span data-id="tab4">网安</span> -->
                <!-- <span data-id="tab5">禁毒</span> -->
                <span data-id="tab6">交管</span>
                <span data-id="tab7">监管</span>

            </nav>
        </section>
    </header>


    <section class="list_box">
        <div class="list" id="tab1">
            <div class="list_box fixclear">
				<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=22"> -->
                        <a id="yybl" href="#">
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/yybl.png" alt="">
					<span>预约办理</span>
				</a>
				
				<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=13"> -->
                 <a id="bljdcx" href="#">
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/bljdcx.png" alt="">
					<span>办理进度查询</span>
				</a>
				
                <!-- <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon36.png" alt="">
                    <span>出入境各种签证业务</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon86.png" alt="">
                    <span>文明旅游宣传</span>
                </a>
            
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon87.png" alt="">
                    <span>境外临时住宿登记</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon30.png" alt="">
                    <span>证件查询</span>
                </a>
                <a  class="jigou">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon88.png" alt="">
                    <span>机构导航</span>
                </a> -->
            </div>
        </div>
        <div class="list" id="tab7">
                <div class="list_box fixclear">
                    <!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=20"> -->
                            <a id="jsyyhj" href="#">
                        <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/js.png" alt="">
                        <span>家属预约会见</span>
                    </a>
                    <!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=21"> -->
                            <a id="lsyyhj" href="#">
                        <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/ls.png" alt="">
                        <span>律师预约会见</span>
                    </a>
                  
                   
                </div>
            </div>
        <div class="list" id="tab2">
            <div class="list_box fixclear">
                <a  onclick="jumpInstructions('LedgerAccountInstructions');">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon97.png" alt="">
                    <span>立户分户</span>
                </a>
                <a onclick="jumpInstructions('RegistrationList');">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon102.png" alt="">
                    <span>户口登记</span>
                </a>
                <a onclick="jumpInstructions('RegistrationCancellationList');" >
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon92.png" alt="">
                    <span>户口注销</span>
                </a>
                <a onclick="jumpInstructions('RegisteredToMoveInList');" >
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon109.png" alt="">
                    <span>户口迁入</span>
                </a>
                <a onclick="jumpInstructions('RegisteredOutList');" >
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon93.png" alt="">
                    <span>户口迁出</span>
                </a>
                <a onclick="jumpInstructions('FlowCardInstructions');">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon178.png" alt="">
                    <span>流动人口居住证</span>
                </a>
                <!-- <a href="https://msjw.gat.shandong.gov.cn/idcapprovalreception/getDetailInfo.shtml?typid=AB285446EEA64A41AA000AF8D6301245&org_id=directly&sduuid=${record.uuid}&sdtoken=${record.token}">
                        <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon178.png" alt="">
                        <span>流动人口居住证</span>
                    </a> -->
                <a onclick="jumpInstructions('ChangeList');">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon111.png" alt="">
                    <span>户口登记项目变更更正</span>
                </a>
                <a onclick="jumpInstructions('ProveList');">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon112.png" alt="">
                    <span>出具证明</span>
                </a>
<!--                 <a onclick="jumpInstructions('HouseholdSelectList');"> -->
<%--                     <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon105.png" alt=""> --%>
<!--                     <span>户籍信息查询</span> -->
<!--                 </a> -->
             <!--   <div class="test">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon_114.png" alt="">
                    <span>一键报警</span>
                </div>
              --!>
                
            </div>
        </div>
        <div class="list" id="tab3">
            <div class="list_box fixclear">
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon113.png" alt="">
                    <span>养犬登记申请</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon114.png" alt="">
                    <span>无犯罪记录证明</span>
                </a>

                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon115.png" alt="">
                    <span>办理许可证</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon116.png" alt="">
                    <span>网约车备案监管</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon117.png" alt="">
                    <span>公章法人章</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon118.png" alt="">
                    <span>营业性爆破作业单位</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon119.png" alt="">
                    <span>出租房主注册</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon120.png" alt="">
                    <span>申报点用户注册</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon121.png" alt="">
                    <span>自助业务</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon122.png" alt="">
                    <span>寻人寻物</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon123.png" alt="">
                    <span>物品买卖</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon124.png" alt="">
                    <span>消防</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon125.png" alt="">
                    <span>举报</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon126.png" alt="">
                    <span>执法公示</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon127.png" alt="">
                    <span>新闻资讯</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon128.png" alt="">
                    <span>警民互动</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon129.png" alt="">
                    <span>报警</span>
                </a>
                <a  class="jigou">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon130.png" alt="">
                    <span>机构导航</span>
                </a>
                <a onclick="superviseJump('SuperviseList');">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon131.png" alt="">
                    <span>监管</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon132.png" alt="">
                    <span>留所服刑释放查询</span>
                </a>

            </div>
        </div>
        <div class="list" id="tab4">
            <div class="list_box fixclear">
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon134.png" alt="">
                    <span>手册下载</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon135.png" alt="">
                    <span>计算机信息网络国际联网备案</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon136.png" alt="">
                    <span>通讯网络诈骗止付助手</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon137.png" alt="">
                    <span>互联网上网服务营业场所设立</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon138.png" alt="">
                    <span>互联网上网服务营业场所变更</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon139.png" alt="">
                    <span>互联网上网服务营业场所安全审核</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon140.png" alt="">
                    <span>互联网上网服务营业场所年审申请</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon141.png" alt="">
                    <span>网吧因故停业虚向公安机关提出申请（备案）</span>
                </a>
            </div>
        </div>
        <div class="list" id="tab5">
            <div class="list_box fixclear">
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon142.png" alt="">
                    <span>第一类非药品类 易制毒化学品购买许可证明审批</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon143.png" alt="">
                    <span>第二类、第三类易制毒化学品购买备案证明审批</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon144.png" alt="">
                    <span>第一类易制毒化学品运输许可证明审批</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon145.png" alt="">
                    <span>第二类易制毒化学品运输许可证明审批</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon146.png" alt="">
                    <span>第三类易制毒化学品运输许可证明审批</span>
                </a>
            </div>
        </div>
        <div class="list" id="tab6">
            <div class="list_box fixclear">
				<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=16"> -->
                    <a id="fdjk" href="#">
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/fdjk.png" alt="">
					<span>罚单缴款</span>
				</a>
				<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=17"> -->
                        <!-- <a id="kfjk" href="#">
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/kfjk.png" alt="">
					<span>扣分缴款</span>
				</a> -->
				<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=19"> -->
                        <a id="wfcx" href="#">
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/wfcx.png" alt="">
					<span>违法查询</span>
				</a>
				<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=18"> -->
                <a id="trdj" href="#">
					<img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/tp/tp/trdj.png" alt="">
					<span>他人代缴</span>
				</a>
                <!-- <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon147.png" alt="">
                    <span>机动车6年免检申领</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon148.png" alt="">
                    <span>轻微交通事故快处理</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon149.png" alt="">
                    <span>证件号补换、办理</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon150.png" alt="">
                    <span>违法曝光处理</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon151.png" alt="">
                    <span>机动车驾驶证考试</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon152.png" alt="">
                    <span>学法免分</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon153.png" alt="">
                    <span>驾驶人模拟考试</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon154.png" alt="">
                    <span>驾驶证年审学习</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon155.png" alt="">
                    <span>驾驶证满分学习</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon156.png" alt="">
                    <span>联系方式变更</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon157.png" alt="">
                    <span>报废机动车</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon158.png" alt="">
                    <span>交通路况实时查询</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon159.png" alt="">
                    <span>预选机动车号牌</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon160.png" alt="">
                    <span>新能源汽车号牌</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon161.png" alt="">
                    <span>二手车号牌业务</span>
                </a>


                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon162.png" alt="">
                    <span>非机动车业务</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon163.png" alt="">
                    <span>临时入境机动车牌证核发</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon164.png" alt="">
                    <span>货车临时通行证办理</span>
                </a>

                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon165.png" alt="">
                    <span>校车驾驶资者认证</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon166.png" alt="">
                    <span>打印学习驾驶证明</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon167.png" alt="">
                    <span>违法已处理未缴费</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon168.png" alt="">
                    <span>违法未处理未缴费</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon169.png" alt="">
                    <span>非车主用户处理缴费</span>
                </a>

                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon170.png" alt="">
                    <span>非认证用户违法查询</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon171.png" alt="">
                    <span>僵尸车整治</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon172.png" alt="">
                    <span>驾驶培训机构</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon173.png" alt="">
                    <span>临时号牌审核</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon174.png" alt="">
                    <span>交通监控点位查询</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon175.png" alt="">
                    <span>交通管理业务指导、相关表格样式及范本下载</span>
                </a>
                <a  class="jigou">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon176.png" alt="">
                    <span>机构导航</span>
                </a>
                <a href="#">
                    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new/icon177.png" alt="">
                    <span>交通违法举报</span>
                </a> -->
            </div>
        </div>
    </section>
   
	<c:if test="${rzdj eq 1 }">
	 <footer class="fixclear BottomOne">
        <a onclick="pageswitch('index')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_1.png" alt="">
            <p class="textb">首页</p>
        </a>

        <a onclick="pageswitch('tab')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn3.png" alt="">
            <p>办理</p>
        </a>
        <a onclick="pageswitch('select')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn4.png" alt="">
            <p>查询</p>
        </a>
        <a onclick="pageswitch('news')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn5.png" alt="">
            <p>资讯</p>
        </a>
      
        <a onclick="pageswitch('police')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box/btn6.png" alt="">
            <!-- ${policerzdj eq '5'}  ${policerzdj} -->
            <span class="weui-badge jq"   <c:if test="${policeNum4 eq 0}">style="display:none" </c:if>>
                
                ${policeNum4}
                </span>
            <p>警务</p>
            
           
        </a>
		 </footer>
		</c:if>
		<c:if test="${rzdj eq 0 }">
		 <footer class="fixclear BottomTwo">
        <a onclick="pageswitch('index')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_1.png" alt="">
            <p class="textb">首页</p>
        </a>

        <a onclick="pageswitch('tab')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn3.png" alt="">
            <p>办理</p>
        </a>
        <a onclick="pageswitch('select')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn4.png" alt="">
            <p>查询</p>
        </a>
        <a onclick="pageswitch('news')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn5.png" alt="">
            <p>资讯</p>
        </a>
		 </footer>
		</c:if>
     
        <div class="weui-mask weui-mask--visible"></div>
        <div class="weui-dialog weui-dialog--visible">
            <div class="weui-dialog__hd"><strong class="weui-dialog__title">选择报警方式</strong><span></span></div>
            <div class="weui-dialog__ft"><a href="tel:110" class="weui-dialog__btn default">紧急报警</a>
            <a href="<%=basePath%>wx/jumppolice/wechatcallpolice?openid=${openid}"
            class="weui-dialog__btn">非紧急报警</a></div>
        </div>
</body>

<script src="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
<script src="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>
<script src="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/swiper/dist/js/swiper.min.js"></script>

<script type="text/javascript">
// window.onload=function(){
//     $('.swiper-wrapper').append(` <div class="swiper-slide"><img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/bj/6.jpg" alt=""></div>
//                 <div class="swiper-slide"><img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/bj/1.jpg" alt=""></div>
//                 <div class="swiper-slide"><img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/bj/5.gif" alt=""></div>`)
             
// }
</script>

<script>

    $('.test').on('click',function(){
            window.location.href = "<%=basePath%>wx/wechatcall/QRcode";
    })


    $('.yjnc').on('click',function(){
        $.showLoading('加载中...');
        hide()
    window.location.href = '<%=basePath%>wx/jtgl/jump?openid=${openid}&pd=1'


    })
    $('.zmzx').on('click',function(){
        $.showLoading('加载中...');
        hide()
        window.location.href = "<%=basePath%>wx/intelanswers/skip?openid=${openid}";

    })


    var swiper = new Swiper('.swiper-container', {
        spaceBetween: 0,
        loop: true,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
//隐藏区域
// $('nav span').siblings().removeClass('bbtm').end().addClass('bbtm')
        $('.list_box .list').css('display', 'none')
        $('.list_box #' + $('nav span').data('id')).css('display', 'block')
    $('nav span').on('click', function () {
        $(this).siblings().removeClass('bbtm').end().addClass('bbtm')
        $('.list_box .list').css('display', 'none')
        $('.list_box #' + $(this).data('id')).css('display', 'block')
    }) 
    
//----------------------------------
    $('.jigou').on('click', function () {
        $.showLoading('加载中...');
        hide()
		window.location.href = "<%=basePath%>wx/jgdh/type?openid=${openid}";
    })



    $('.yjbaojing').on('click', function () {
		   $('.weui-mask.weui-mask--visible').css('visibility', 'visible')
		   $('.weui-dialog.weui-dialog--visible').css('visibility', 'visible')
    

	$('.weui-dialog__hd span').on('click',function () {
		$('.weui-mask.weui-mask--visible').css('visibility', 'hidden')
		$('.weui-dialog.weui-dialog--visible').css('visibility', 'hidden')
      })
      
// $('.weui-mask.weui-mask--visible').on('click', function (){

//    $('.weui-mask').css( 'visibility', 'hidden')
//    $('.weui-dialog.weui-dialog--visible').css(  'visibility', 'hidden')
// })


    })





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
	function superviseJump(name){
        $.showLoading('加载中...');
        hide()
		 window.location.href="<%=basePath%>wx/superviseJump/"+name+"?openid=${openid}";
		}

        //----------------------------------------------------------------------------------------------------------
        //新加点击事件
        $('#yybl').on('click', function () {//预约办理
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'15'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/idcapplyform/subscribeEEM.do?transacCode=101005&sdtoken=${msg.token}";
			 })
			 
        })
        $('#bljdcx').on('click', function () {//办理进度查询
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'13'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/crjquery/doubleindex.shtml?sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 })
        })

        //==========================
        $('#fdjk').on('click', function () {//罚单缴款
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'16'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/wfjf/handle.shtml?transacCode=101005&sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 })
        })
        $('#kfjk').on('click', function () {//扣分缴款
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'17'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/wxpersoncenter/myCar.shtml?sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 })
        })
        $('#wfcx').on('click', function () {//违法查询
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'19'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/wfjf/handleNologin.shtml?transacCode=101003&sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 })
        })
        $('#trdj').on('click', function () {//他人代缴
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'18'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/wfjf/handle.shtml?transacCode=101014&sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 })
        })
        $('#jsyyhj').on('click', function () {//家屬預約回見
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'20'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/idcapprovalreception/getDetailInfo.shtml?typid=AB285446EEA64A41AA000AF8D6301275&org_id=directly&sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 })
        })
        $('#lsyyhj').on('click', function () {//律师预约回见
            $.showLoading('加载中...');
            hide()
			 $.post("<%=basePath%>wx/sdwjw/sdWjwTz",{'openid':'${openid}','type':'21'},function(msg){
				window.location.href="https://msjw.gat.shandong.gov.cn/idcapprovalreception/getDetailInfo.shtml?typid=AB285446EEA64A41AA000AF8D6301274&org_id=directly&sduuid=${msg.uuid}&sdtoken=${msg.token}";
			 })
        })
        //----------------------------------------------------------------------------------------------------------
</script>


</html>