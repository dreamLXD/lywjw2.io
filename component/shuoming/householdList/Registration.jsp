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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>户口登记列表</title>
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/tab.css">
    <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/footer.css">
    <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
</head>
<style>
    section {
        padding-bottom: 50px;
        background-color: #fff;
    }

    .blue {
        background-color: rgb(81, 163, 235)
    }

    .green {
        background-color: rgb(125, 212, 147)
    }
</style>

<body>
    <section>
        <div class="list">
            <a  onclick="jumpInstructions('MarriageBabiesRegistrationInstructions');" class="fixclear">
                <p>婚生随父母出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('UnMarriageBabiesRegistrationInstructions');" class="fixclear">
                <p>非婚生随父母出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('ForeignBabiesRegistrationInstructions');"  class="fixclear">
                <p>国（境）外出生随父母登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('GrandparentsBabiesRegistrationInstructions');" class="fixclear">
                <p>随祖父母、外祖父母出生登记（父母双方属现役军人、在校学生或华侨）</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a    onclick="jumpInstructions('ParentsDeathBabiesRegistrationInstructions');"  class="fixclear">
                <p>父母死亡随其他亲属出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('FemaleBabiesRegistrationInstructions');"   class="fixclear">
                <p>随双军人或女士官出生登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('AdoptRegistrationInstructions');"   class="fixclear">
                <p>公民收养登记</p>
                <span class="green">在线预审</span>
            </a>
            </a>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('SocialRegistrationInstructions');"  class="fixclear">
                <p>社会福利机构收养登记</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('SoldierSettleInstructions');"  class="fixclear">
                <p>士官、义务兵退出现役落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ChangeSettleInstructions');" class="fixclear">
                <p>军队转业干部落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('CivilServiceSettleInstructions');"  class="fixclear">
                <p>现役干部转改文职落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('RetireSettleInstructions');"   class="fixclear">
                <p>军队离退休干部（士官）落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a  onclick="jumpInstructions('ExpelSettleInstructions');"  class="fixclear">
                <p>退兵或开除军籍落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ReturnSettleInstructions');" class="fixclear">
                <p>回国（境）定居落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ChineseSettleInstructions');"  class="fixclear">
                <p>加入中国籍落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('DeathSettleInstructions');" class="fixclear">
                <p>宣告死亡（失踪）重新出现落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('BeggarSettleInstructions');" class="fixclear">
                <p>滞站3个月以上流浪乞讨人员落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>

    </section>
</body>
<script>
function jumpInstructions(name){
	  window.location.href="<%=basePath%>wx/jumpInstructions/"+name+"?openid=${openid}";
	}
</script>
</html>