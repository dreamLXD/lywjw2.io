/**
 *作者：luck
 *功能：
 */
$(function () {
    
    var obj = {};
    
    let openid=$('#openid').val();
    let sjdbh=$('#sjdbh').val()
    
    var key1="openid"
    var key2="sjdbh"

    obj[key1] = openid;
    obj[key2] = sjdbh;

    $('.weui-cell_swiped').swipeout()
    $('.show').on('click', function (e) {
        // e.preventDefault()
        $('.weui-mask.weui-mask--visible').css('visibility', 'visible')
        $('.weui-dialog.weui-dialog--visible').css('visibility', 'visible')
        $("#type_show").select({
            title: "类型",
            items: [{
                title: "刑事",
                value: 1
            },
                {
                    title: "治安",
                    value: 2
                },
                {
                    title: "交通",
                    value: 3
                },
                {
                    title: "火灾",
                    value: 4
                },
                {
                    title: "求助",
                    value: 5
                },
                {
                    title: "投诉",
                    value: 6
                },
                {
                    title: "纠纷",
                    value: 7
                }
            ]
        });
    })
    $('.del_close').on('click', function (e) {
        e.preventDefault()
        $('.weui-mask.weui-mask--visible').css('visibility', 'hidden')
        $('.weui-dialog.weui-dialog--visible').css('visibility', 'hidden')
    })
    $('.submit').on('click', function (e) {
        e.preventDefault()
        $('.weui-mask.weui-mask--visible').css('visibility', 'hidden')
        $('.weui-dialog.weui-dialog--visible').css('visibility', 'hidden')

       let entering= $('#entering').val()
        // let arr= $('form').serializeArray()
        // let obj={};
        // console.log(arr)
        // arr.forEach((item)=>{
        //     obj[item.name]=item.value;
        //     if(item.name=='bjrxb'){
        //         obj[item.name]=  $('#sex').data('values')
        //     }
        // })
       
        var key3="hxlr";
        var hxnr =entering= $('#entering').val();
        obj[key3] = hxnr;

        console.log(obj)
        // window.location.href = './../../jingqing.html'
        if(true){
            $.alert({
                title: '数据提交中',
                text: '请稍候',
                onOK: function () {
                	console.log(obj)
                    // dataType: "JSON",
                    //     cache: false,//上传文件无需缓存
                    //     processData: false,//用于对data参数进行序列化处理 这里必须false
                    //     contentType: false, //必须
                    //jiazai()
                    $.showLoading();
                       		$.ajax({
                                   url:base_path + '/wechatcall/followInput',
                                   type:'post',
                                   data:obj,
                                   dataType:'json',
                                   /*async: false,
                                cache: false,
                                processData: false,
                                contentType: false,*/
                       			// jsonpCallback:'Callback',
                                   success:function (msg) {
              						 var openid=$("#openid").val();
    								  console.log(openid)
    								   if(msg=='1'){
                                           //jiazaiHid()
                                           $.hideLoading();
                                           $.toast("提交成功", 1000);
                                            // $.alert({
										    //           title: "",
										    //           text:"提交成功",
										    //           onOK: function () {
										                
										     window.location.replace(base_path + '/login/PageJump?PageName=police&openid='+openid);
										    //           },
										    //           onCancel: function () {
										    //               log("cancel");
										    //           }
										    //   });
                                           
                                           
//    									   window.alert("提交成功");
    									
    								   }else if(msg=='2'){
                                        //jiazaiHid()
                                        $.hideLoading();
                                           //window.alert("提交失败");
                                            $.toast("提交失败", "cancel");
                                          
    								   }else{
                                        //jiazaiHid()
                                        $.hideLoading();
                                          // window.alert("网络波动请重新进行录入");
                                          $.toast("网络波动请重新进行录入", "cancel");
    								   }


    					}
                               })
                }
            });

        }

    })

    $('ul li').on('click', function (event) {
        event.preventDefault();

        if ($('img').hasClass('fangda')) {
            $('.zhegai').css({
                'display': 'none'
            });
            $(this).children('img').removeClass('fangda')
        } else {
            $('.zhegai').css({
                'display': 'block'
            });
            $(this).children('img').addClass('fangda')
        }
    });
    $('.zhegai').on('click', function () {
        console.log('a')
        $('.zhegai').css({
            'display': 'none'
        });
        $('ul li').children('img').removeClass('fangda')
    })


/*    */



})