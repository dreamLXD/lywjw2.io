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
    <title>户口迁入列表</title>
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
            <a onclick="jumpInstructions('CoupleDependenceInstructions');" class="fixclear">
                <p>夫妻投靠</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ParentsChildrenDependenceInstructions');" class="fixclear">
                <p>父母投靠成年子女</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ChildrenParentsDependenceInstructions');"  class="fixclear">
                <p>子女投靠父母</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('RelativesDependenceInstructions');" class="fixclear">
                <p>投靠其他亲属（限因父母死亡投靠其他监护人）</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('AdoptionMigrationInstructions');" class="fixclear">
                <p>收养迁移</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ResidenceSettleInstructions');" class="fixclear">
                <p>居住落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('RentSettleInstructions');" class="fixclear">
                <p>租房落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('TalentSettleInstructions');" class="fixclear">
                <p>人才落户</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('EmployeTransferInstructions');" class="fixclear">
                <p>调动和录(聘)用人员迁移</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('ArmyFamilyTransferInstructions');" class="fixclear">
                <p>军官（士官）家属随军</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('FirCollegRecruitInstructions');" class="fixclear">
                <p>大中专学校招生</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('FirCollegExpelInstructions');" class="fixclear">
                <p>大中专学生转学、退学或开除学籍</p>
                <span class="green">在线预审</span>
            </a>
        </div>
        <div class="list">
            <a onclick="jumpInstructions('FirCollegeGraduateInstructions');" class="fixclear">
                <p>大中专毕业生就业、回原籍</p>
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