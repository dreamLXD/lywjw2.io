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
  <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/list.css">
  <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/footer.css">
  <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/weuix.css">
  <link rel="stylesheet" href="<%=basePath%>webpage/lywjw/lyswjwwx/css/jingqing2.css">
  <link rel="stylesheet" href="<%=basePath %>webpage/lywjw/huise.css">
  <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/lib/jquery-2.1.4.js"></script>
  <script src="<%=basePath%>webpage/lywjw/lyswjwwx/node_modules/jquery-weui/dist/js/jquery-weui.js"></script>

      <style>
   			.jq{
   			position: absolute;
   			top: -.4em;
   			right: 0.7em;
   			}
         .box_jybb{
           position: relative;
         }
         .mjbb{
           display: inline-block;
           position: absolute;
           top: 50%;
           transform: translate(0,-50%) rotate(90deg);
           transition: all 0.5s;
           width: 20px;
           height: 20px;
           background:url('<%=basePath%>webpage/lywjw/lyswjwwx/img/gen.png') no-repeat center;
           background-size: 100% 100%;
           right: 20px;
         }
         .xz{
          transform: translate(0,-50%) rotate(0deg);
         }
         #jybb{
           border-radius: 5px;
           overflow: hidden;
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
</head>
<body>
  <header class="header">
    <span></span>
    <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/jybanner.png" alt="">
  </header>
  <section class="fixclear">
      <c:if test="${record.rzdj eq 3 }">
      <div id='jybb' class="list ">
          <span class="span_box"></span>    
          <div class="clear box_jybb">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/iconmjbb.png" alt="">
            <p>值班报备 </p><span class='mjbb'></span>
          </div>
          <input type="hidden" id="openid" value="${openid}" style="display:none">
          <div class="er_list clear">
            <form action="#" method='post' class="weui-form clear">	
              <div class="weui-form-li iblock">
                <input class="weui-form-checkbox" name="f2" id="dlsz" value="2" type="radio">
                <label for="dlsz">
                  <i class="weui-icon-radio"></i>
                  <div class="weui-form-text">
                    <p>带班领导</p>
                  </div>
                </label>
              </div>
            
              <div class="weui-form-li iblock">
                <input class="weui-form-checkbox" name="f2" id="jy" value="1"   type="radio">
                <label for="jy">
                  <i class="weui-icon-radio"></i>
                  <div class="weui-form-text">
                    <p>值班民警</p>
                  </div>
                </label>
              </div>
              <p class="jy_p sm_xb">休班中</p>
              <div class="weui-form-preview__ft">
                  <a class="weui-form-preview__btn jw_sb blue" href="javascript:" style=>值班</a>
                  <a type="submit" class="weui-form-preview__btn jw_xb  gray " href="javascript:">休班</a>
                </div>
            </div>
              
    
           </form>
        
        </div>
      </c:if>
      <c:if test="${record.rzdj eq 5 }">
        <a  href="<%=basePath%>wx/reportonduty/reportOnDutyDataJump?openid=${openid}"  class="list">
          <span></span>
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon180.png" alt="">
            <p class="gen">
              民警换班查看
            </p>
          </a>
        </c:if>
  <c:if test="${record.rzdj eq 3 }">
    <a  onclick="jumppage('receive')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon180.png" alt="">
      <span class="weui-badge jq"   <c:if test="${policeNum eq 0 }">style="display:none" </c:if>>${policeNum }</span>
      <p class="gen">
        警情接收
      </p>
    </a>
    <a onclick="jumppage('received')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon179.png" alt="">
      <p class="gen">
        已接处的警情
      </p>
    </a>
    <a onclick="jumppage('submission')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon181.png" alt="">
      <p class="gen">
        已提交的警情
      </p>
    </a>
    </c:if>

    <c:if test="${record.rzdj eq 5 }">
    <a  onclick="jumppage('receive')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon180.png" alt="">
       <span class="weui-badge jq"   <c:if test="${policeNum eq 0 }">style="display:none" </c:if>>${policeNum }</span>
      <p class="gen">
        警情接收
      </p>
    </a>
    <a onclick="jumppage('received')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon179.png" alt="">
      <p class="gen">
        已接处的警情
      </p>
    </a>
    <a onclick="jumppage('submission')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon181.png" alt="">
      <p class="gen">
        已提交的警情
      </p>
    </a>
    </c:if>
    <c:if test="${record.rzdj eq 5 &&record.rzdj ne 6&&record.rzdj ne 7}">
    <a onclick="jumppage('approval')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon182.png" alt="">
      <span class="weui-badge jq"   <c:if test="${policeNum3 eq 0 }">style="display:none" </c:if>>${policeNum3 }</span>
      <p class="gen">   
        待审批的警情
      </p>
    </a>
    </c:if>  
 
    <c:if test="${dbsz eq 1 &&record.rzdj ne 6&&record.rzdj ne 7}">
    <a onclick="jumppage('approval')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/icon182.png" alt=""  <c:if test="${policeNum2 eq 0 }">style="display:none" </c:if>>
      <span class="weui-badge jq"   <c:if test="${policeNum2 eq 0 }">style="display:none" </c:if>>${policeNum2 }</span>
      <p class="gen">   
        待审批的警情
      </p>
    </a>
    </c:if>
     <c:if test="${record.rzdj eq 5 }">
    <a onclick="jumppage('examiner')" class="list">
        <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/jl.png" alt="">
      <p class="gen">   
        已审批的警情
      </p>
    </a>
    </c:if> 
    
    <a onclick="jumppage('allexaminer')" class="list">
          <span></span>

      <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/all.png" alt="">
      <p class="gen">   
        全部警情
      </p>
    </a>
   
  </section>
  <footer class="fixclear BottomOne">
        <a onclick="pageswitch('index')">
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/bnt1.png" alt="">
            <p >首页</p>
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
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box2/btn5.png" alt="">
            <p>资讯</p>
        </a>
        
        <a onclick="pageswitch('police')" >
            <img src="<%=basePath%>webpage/lywjw/lyswjwwx/img/new_box/bnt_6.png" alt="">
            <span class="weui-badge jq"   <c:if test="${policeNum4 eq 0 }">style="display:none" </c:if>>
              
              ${policeNum4}
              </span>
            <p class="textb">警务</p>
        </a>
        <!-- <a href="LIST.html">
            <img src="img/new/bnt2.png" alt="">
            <p>个人中心</p>
        </a> -->
    </footer>
</body>
<script>
  $('a').on('click',function(){
    $.showLoading('加载中...');
    hide()
  })
	function jumpInstructions(name){
	 window.location.href="<%=basePath%>wx/jumpInstructions/"+name+"?openid=${openid}";
	}

	function pageswitch(name){
	window.location.href="<%=basePath%>wx/login/PageJump?openid=${openid}&PageName="+name;
	}
	
	function jumppage(name){
	window.location.href="<%=basePath%>wx/jumppolicelist/JumpPoliceList?openid=${openid}&PageName="+name+"&rzdj="+${record.rzdj};	
// <%-- window.location.href="<%=basePath%>wx/policeTest/JumpPoliceList?openid=${openid}&PageName="+name+"&rzdj="+${record.rzdj}; --%>
	
	}
	
	
</script>
	<script>
        let jw_sb_num='';

      $.ajax({
          url: '<%=basePath%>wx/reportonduty/reportOnDutySee?openid=${openid}',
          type: 'post',
          data: '',
          dataType: 'json',
          success: function (msg) {
            console.log(msg)
            jw_sb_num=msg.sfsb;
            if(msg.sfsb==1){
              $('.jy_p').addClass('sm_sb')
              $('.jy_p').removeClass('sm_xb')
              $('.jy_p').text('值班中')

                $('.jw_xb').removeClass('gray')
                $('.jw_xb').addClass('blue')
                $('.jw_sb').removeClass('blue')
                $('.jw_sb').addClass('gray')
                Array.from($('.weui-form-checkbox')).forEach((item)=>{
                    $(item).attr('disabled',true)
                    })
         }else{
              $('.jy_p').addClass('sm_xb')
              $('.jy_p').removeClass('sm_sb')
          Array.from($('.weui-form-checkbox')).forEach((item)=>{
                    $(item).attr('disabled',false)
                    })
                $('.jw_sb').removeClass('gray')
                $('.jw_sb').addClass('blue')
                $('.jw_xb').removeClass('blue')
                $('.jw_xb').addClass('gray')
  
         }
         if(msg.sxgw){
          if(msg.sxgw==1){
        	  $('#jy').attr('checked', true);
        	  $('#dlsz').attr('checked', false);
  
         }else{
        	 $('#dlsz').attr('checked', true);
        	  $('#jy').attr('checked', false);
  
         }
         }
          }
      })
      $('#jybb .mjbb').addClass('xz');
          $('.er_list').css({'height':0});
      $('#jybb .box_jybb').on('click',function () {
        if(!$('#jybb .mjbb').hasClass('xz')){
          $('#jybb .mjbb').addClass('xz');
          $('.er_list').animate({'height':0},300);
        }else{
          $('#jybb .mjbb').removeClass('xz');
          $('.er_list').animate({ 'height':'115px' },300)
        }
        })
  
    
      
    
      
      $('.jw_sb').on('click', function () {
          if (jw_sb_num != 1) {
          let data = $('form').serializeArray();
          console.log(data)
          if (data[0]) {
            let text = data[0].value == '1' ? '请确认值班民警上班' : '请确认带班领导上班'
            $.confirm({
              title: text,
              text: '如选取错误可取消',
              onOK: function () {
                //点击确认
                $.ajax({
          url: '<%=basePath%>wx/reportonduty/reportOnDutySave',
          type: 'post',
          data: {'openid':$('#openid').val(),'type': data[0].value},
          dataType: 'json',
          success: function (msg) {
             $('.jy_p').addClass('sm_sb')
              $('.jy_p').removeClass('sm_xb')
              $('.jy_p').text('值班中')
               jw_sb_num=1;
                $('.jw_xb').removeClass('gray')
                $('.jw_xb').addClass('blue')
                $('.jw_sb').removeClass('blue')
                $('.jw_sb').addClass('gray')
                    Array.from($('.weui-form-checkbox')).forEach((item)=>{
                    $(item).attr('disabled',true)
                    })
                    window.location.reload()
          }
      })
               	
              },
              onCancel: function () {
              }
            });
          } else {
            $.toast("请选择您的值班状态", "text");
          }
          }
  
        })
        
        
          $('.jw_xb').on('click', function () {
            if (jw_sb_num == 1) {
            $.confirm({
              title: '请确认您要休班',
              text: '如选取错误可取消',
              onOK: function () {
                //点击确认
                $.ajax({
                      url: '<%=basePath%>wx/reportonduty/reportOnDutyUpdate',
                      type: 'post',
                      data: {'openid':$('#openid').val()},
                      dataType: 'json',
                      success: function (msg) {
                        console.log(msg)
                        if(msg==1){
                          $('.jy_p').addClass('sm_xb')
                        $('.jy_p').removeClass('sm_sb')
                         $('.jy_p').text('休班中')

                        jw_sb_num = 0;
                        Array.from($('.weui-form-checkbox')).forEach((item) => {
                          $(item).attr('disabled', false)
                        })
                        $('.jw_sb').removeClass('gray')
                        $('.jw_sb').addClass('blue')
                        $('.jw_xb').removeClass('blue')
                        $('.jw_xb').addClass('gray')
                        window.location.reload()

                        }else if(msg==0){
                          $.toast("您还没有值班", "text");
                        }else if(msg == 2){
                          // $.toast("您还没有可替换的值班领导", "text");
                            $.alert({
                              title: '您还没有可替换的值班领导',
                              onOK: function () {
                                  //
                              }
                            })
                        }
                      }
                  })
                
              },
              onCancel: function () {
                
              }
            });
            }
  
          })
  
          
    </script>
</html>