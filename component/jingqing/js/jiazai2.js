﻿
  function jiazai2() {
    let str=`
    <div class="fixbox">
       <div class="fixbox_title"> 正在上传数据 </div>
    <div class="fixbox_cont"> </div>
    </div>
    `
    $('body').append(str)

    let str1=`
    <style>
        .fixbox{
            position: fixed;
            width: 100%;
            height: 100%;   
             z-index:9999;
			 top:0;
			 left:0;
            background-color: rgba(0,0,0,0.2)

        }
        .fixbox_title{
            width:100%;
            height:20px;
            color:#fff;
            text-align:center;
            color:#1296db;
             position: absolute;
            top: 50%;
            transform: translateY(-50%);
            margin-top:-80px
        }
        .fixbox_cont{
            background:url('img/jiazai2.png') no-repeat center;
            background-size: cover;
            width: 80px;
            height: 80px;
            position: absolute;
            left: 50%;
            top: 50%;
            animation: move 2s infinite linear; 
            transform: translate(-50%,-50%);

        } 
        @keyframes move{
            0%{
                transform: translate(-50%,-50%) rotateZ(0deg);
            }
            100%{
                transform: translate(-50%,-50%) rotateZ(720deg);
            }
        }
    </style>
    `
    $('head').append(str1)
    }
    //jiazai()  //开始加载
    function  jiazaiHid2()  {
        $('.fixbox').css('display','none')
     }
    // jiazaiHid() //隐藏加载
