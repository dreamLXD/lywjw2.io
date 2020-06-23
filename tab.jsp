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
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weuix.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/tab.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/footer.css">
        <style>
        a{
            color:#000
        }
        </style>

    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
<script src="<%=basePath %>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.min.js"></script>

</head>
<style>
    section:nth-of-type(n+2) {
        margin-bottom: 80px;
    }
    
   			.jq{
   			position: absolute;
   			top: -.4em;
   			right: 0.7em;
   			}
               nav{
                   display: flex
               }
               nav span{
                   width: 25%;
                   padding: 10px 0;
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

<body>
    <header>
        <!-- <img src="img/2.png" alt=""> -->
    </header>
    <section>
        <nav>
                <span data-id="tab2" class="bbtm">户政</span>
            <span data-id="tab1" >出入境</span>
            <!-- <span data-id="tab3">治安消防</span> -->
            <!-- <span data-id="tab4">网安</span> -->
            <!-- <span data-id="tab5">禁毒</span> -->
            <span data-id="tab6">交管</span>
            <span data-id="tab7">监管</span>

        </nav>
    </section>
    <section id="tab7">
            <div class="list">
                    <a id="jsyyhj" href="#" class="fixclear">
                <!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=20" class="fixclear"> -->
                    <p>家属预约会见</p>
                    <span class="green">在线预审</span>
                </a>
            </div>
            <div class="list">
                    <a id="lsyyhj" href="#" class="fixclear">
                <!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=21" class="fixclear"> -->
                    <p>律师预约会见</p>
                    <span class="green">在线预审</span>
                </a>
            </div>
           
        </section>
    <section id="tab1">
		<div class="list">
                <a id="yybl" href="#" class="fixclear">
			<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=7" class="fixclear"> -->
				<p>预约办理</p>
				<span class="green">在线预审</span>
			</a>
		</div>
		
		<div class="list">
                <a id="bljdcx" href="#" class="fixclear">
			<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=13" class="fixclear"> -->
				<p>办理进度查询</p>
				<span class="green">在线预审</span>
			</a>
		</div>
        <!-- <div class="list">
            <a href="#" class="fixclear">
                <p>出入境各种签证业务</p>
                <span class="green">事项公示</span>
            </a>
        </div>
        <div class="list">
            <a href="#" class="fixclear">
                <p>文明旅游宣传</p>
                <span class="green">事项公示</span>
            </a>
        </div>
        <div class="list ">
            <a href="./component/zhinengzixun/index.html" class="fixclear">
                <p>智能咨询</p>
                <span class="green">事项公示</span>
            </a>
        </div>
        <div class="list ">
            <a href="#" class="fixclear">
                <p>证件办理、缴费、进度查询</p>
                <span class="green">事项公示</span>
            </a>
        </div>
        <div class="list ">
            <a href="#" class="fixclear">
                <p>境外临时住宿登记</p>
                <span class="green">事项公示</span>
            </a>
        </div>
        <div class="list ">
            <a href="#" class="fixclear">
                <p>机构导航</p>
                <span class="green">事项公示</span>
            </a>
        </div> -->
    </section>
    <section id="tab2">
        <div class="list">
            <a href="<%=basePath%>wx/jumpInstructions/LedgerAccountInstructions?openid=${openid}" class="fixclear">
                <p>家庭立户或分户</p>
                <span class="blue">全程网办</span>
            </a>
        </div>

        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/MarriageBabiesRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>婚生随父母出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/UnMarriageBabiesRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>非婚生随父母出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ForeignBabiesRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>国（境）外出生随父母登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/GrandparentsBabiesRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>随祖父母、外祖父母出生登记（父母双方属现役军人、在校学生或华侨）</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ParentsDeathBabiesRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>父母死亡随其他亲属出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/FemaleBabiesRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>随双军人或女士官出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/AdoptRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>公民收养登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/SocialRegistrationInstructions?openid=${openid}" class="fixclear">
                <p>社会福利机构收养登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/SoldierSettleInstructions?openid=${openid}" class="fixclear">
                <p> 士官、义务兵退出现役落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChangeSettleInstructions?openid=${openid}" class="fixclear">
                <p> 军队转业干部落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/CivilServiceSettleInstructions?openid=${openid}" class="fixclear">
                    <p> 现役干部转改文职落户</p>
                    <span class="green">在线预审</span>
                </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/RetireSettleInstructions?openid=${openid}" class="fixclear">
                    <p> 军队离退休干部（士官）落户</p>
                    <span class="green">在线预审</span>
                </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ExpelSettleInstructions?openid=${openid}" class="fixclear">
                    <p>退兵或开除军籍落户</p>
                    <span class="green">在线预审</span>
                </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ReturnSettleInstructions?openid=${openid}" class="fixclear">
                <p> 回国（境）定居落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChineseSettleInstructions?openid=${openid}" class="fixclear">
                <p> 加入中国籍落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/DeathSettleInstructions?openid=${openid}" class="fixclear">
                <p> 宣告死亡（失踪）重新出现落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/BeggarSettleInstructions?openid=${openid}" class="fixclear">
                <p> 滞站3个月以上流浪乞讨人员落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/DeathCancellationInstructions?openid=${openid}" class="fixclear">
                <p> 死亡注销</p>
                <span class="blue">全程网办</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ArmyCancellationInstructions?openid=${openid}" class="fixclear">
                <p> 参军入伍注销</p>
                <span class="blue">全程网办</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/AbroadCancellationInstructions?openid=${openid}" class="fixclear">
                <p>出国（境）定居注销</p>
                <span class="blue">全程网办</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/CoupleDependenceInstructions?openid=${openid}" class="fixclear">
                <p> 夫妻投靠 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ParentsChildrenDependenceInstructions?openid=${openid}" class="fixclear">
                <p> 父母投靠成年子女 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChildrenParentsDependenceInstructions?openid=${openid}" class="fixclear">
                <p> 子女投靠父母 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/RelativesDependenceInstructions?openid=${openid}" class="fixclear">
                <p> 投靠其他亲属（限因父母死亡投靠其他监护人） </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/AdoptionMigrationInstructions?openid=${openid}" class="fixclear">
                <p> 收养迁移 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ResidenceSettleInstructions?openid=${openid}" class="fixclear">
                <p>居住落户 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/RentSettleInstructions?openid=${openid}" class="fixclear">
                <p>租房落户 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/TalentSettleInstructions?openid=${openid}" class="fixclear">
                <p>人才落户 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/EmployeTransferInstructions?openid=${openid}" class="fixclear">
                <p>调动和录(聘)用人员迁移 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ArmyFamilyTransferInstructions?openid=${openid}" class="fixclear">
                <p>军官（士官）家属随军 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/FirCollegRecruitInstructions?openid=${openid}" class="fixclear">
                <p>大中专学校招生 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/FirCollegExpelInstructions?openid=${openid}" class="fixclear">
                <p>大中专学生转学、退学或开除学籍 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/FirCollegeGraduateInstructions?openid=${openid}" class="fixclear">
                <p>大中专毕业生就业、回原籍 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/RemoveCardInstructions?openid=${openid}" class="fixclear">
                <p>持准迁证 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/SecCollegRecruitInstructions?openid=${openid}" class="fixclear">
                <p>大中专学生招生 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/SecCollegeGraduateInstructions?openid=${openid}" class="fixclear">
                <p>大中专学生毕业 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/SecCollegExpelInstructions?openid=${openid}" class="fixclear">
                <p>大中专学生转退学、开除学籍 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChangeSurnameInstructions?openid=${openid}" class="fixclear">
                <p>变更姓氏 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChangeNameInstructions?openid=${openid}" class="fixclear">
                <p>变更名字 </p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChangeNationInstructions?openid=${openid}" class="fixclear">
                <p>变更更正民族 </p>
                <span class="green">在线预审</span>
            </a>
        </div>

        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChangeOtherInstructions?openid=${openid}" class="fixclear">
                <p>服务处所、学历、婚姻状况等 </p>
                <span class="green">在线预审</span>
            </a>
        </div>

        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/FlowCardInstructions?openid=${openid}" class="fixclear">
                <p>流动人口居住证 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>

        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChangeResidenceInstructions?openid=${openid}" class="fixclear">
                <p>户口登记项目内容变更更正证明 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>

        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ChangeIDInstructions?openid=${openid}" class="fixclear">
                <p>公民身份号码更正证明（限重、错号） </p>
                <span class="blue">全程办理</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/ResidenceCancellationInstructions?openid=${openid}" class="fixclear">
                <p>注销户口证明 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>
        <div class="list ">
            <a href="<%=basePath%>wx/jumpInstructions/KinshipProofInstructions?openid=${openid}" class="fixclear">
                <p>亲属关系证明 </p>
                <span class="blue">全程办理</span>
            </a>
        </div>

<!--         <div class="list "> -->
<%--             <a href="<%=basePath%>wx/jumpInstructions/CheckBabyNameInstructions?openid=${openid}" class="fixclear"> --%>
<!--                 <p>新生儿出生落户同名人数查询 </p> -->
<!--                 <span class="blue">全程办理</span> -->
<!--             </a> -->
<!--         </div> -->



    </section>
    <section id="tab6">
        <div class="list">
                <a id="fdjk" href="#"  class="fixclear">
            <!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=16" class="fixclear"> -->
                <p>罚单缴款</p>
                <span class="green">在线预审</span>
            </a>
        </div>
		<div class="list">
                <a id="kfjk" href="#"  class="fixclear">
			<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=17" class="fixclear"> -->
				<p>扣分缴款</p>
				<span class="green">在线预审</span>
			</a>
		</div>
		<div class="list">
                <a id="wfcx" href="#"  class="fixclear">
			<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=19" class="fixclear"> -->
				<p>违法查询</p>
				<span class="green">在线预审</span>
			</a>
		</div>
		<div class="list">
                <a id="trdj" href="#"  class="fixclear">
			<!-- <a href="<%=basePath%>wx/sdwjw/sdWjwTz?openid=${openid}&type=18" class="fixclear"> -->
				<p>他人代缴</p>
				<span class="green">在线预审</span>
			</a>
		</div>
    </section>
	<c:if test="${rzdj eq 1 }">
   <footer class="fixclear BottomOne">
        <a onclick="pageswitch('index')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt1.png" alt="">
            <p>首页</p>
        </a>

        <a onclick="pageswitch('tab')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_3.png" alt="">
            <p class="textb">办理</p>
        </a>
        <a onclick="pageswitch('select')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn4.png" alt="">
            <p>查询</p>
        </a>
        <a onclick="pageswitch('news')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn5.png" alt="">
            <p>资讯</p>
        </a>
        <a onclick="pageswitch('police')"  >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box/btn6.png" alt="">
           <span class="weui-badge jq"   <c:if test="${policeNum4 eq 0 &&policeNum eq 0}">style="display:none" </c:if>>
            
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
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt_3.png" alt="">
            <p class="textb">办理</p>
        </a>
        <a onclick="pageswitch('select')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn4.png" alt="">
            <p>查询</p>
        </a>
        <a onclick="pageswitch('news')">
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
//隐藏区域
// $('#tab1').css('display','none')
// $('#tab2').css('display','block')
//  $('nav').css('display','none');
$('#tab1').css('display', 'none')
        $('#tab2').css('display', 'none')
        $('#tab3').css('display', 'none')
        $('#tab4').css('display', 'none')
        $('#tab5').css('display', 'none')
        $('#tab6').css('display', 'none')
        $('#tab7').css('display', 'none')

$('section#' + $('nav span').data('id')).css('display', 'block')
//===============
    $('nav span').on('click', function () {
        $(this).siblings().removeClass('bbtm').end().addClass('bbtm')
        $('#tab1').css('display', 'none')
        $('#tab2').css('display', 'none')
        $('#tab3').css('display', 'none')
        $('#tab4').css('display', 'none')
        $('#tab5').css('display', 'none')
        $('#tab6').css('display', 'none')
        $('#tab7').css('display', 'none')

        $('section#' + $(this).data('id')).css('display', 'block')
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
    //----------------------------------------------------------
    //新增点击事件
    //出入境 
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

    //监管  
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
    //交管
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

        $('#tab2 a').on('click', function () {//点击加载
            $.showLoading('加载中...');
            hide()
        })
    //----------------------------------------------------------
</script>

</html>