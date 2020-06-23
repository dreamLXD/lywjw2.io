$(function () {
    //位置定位
//    $('.orientation span').on('click', function () {
//        window.location.href = "orientation?openid=${openid}";
//    })
    //获取地址
    // var url = document.location.href;
    // var urlval = url.split("?")[1];
    // console.log(url)
    // if (urlval) {
    //     $('.or_content').val(urlval)
    // }
    //时间控件 与默认时间
    // $("#time").datetimePicker();
    

    // 正则验证
    let key=true;

	function zzyz(item,res,str){
		if(!$(item).parent().children().eq(0).html()==''){
			$($(item).parent().children()[0]).html('')
		}
		if(res[0]){
			$(item).addClass('error')
			$(item).parent().prepend(`<p style="color:red;font-size: 12px">${str}</p>`)
		}else {
			$(item).removeClass('error')
			$(item).siblings().html('')
		}
	}
	Array.from($('input')).forEach((item)=>{
		console.log(item)
			if($(item).attr('name')=='lxdh' ){
				$(item).on('blur',function(){
					console.log('a')
						zzyz($(item),[!/^[1]([3-9])[0-9]{9}$/.test($(this).val())],'请输入正确手机号')
					})
			}


	})
	function zzyzarea(item,res,str){
		if(!$(item).parent().children().eq(0).html()==''){
			$($(item).parent().children()[0]).html('')
		}
		console.log(res[0])
		if(res[0]){
			$(item).addClass('error')
			$(item).parent().prepend(`<p style="color:red;font-size: 12px">${str}</p>`)
		}else {
			$(item).removeClass('error')
			$(item).siblings().html('')
		}
    }
    ////////////////////////////////////////////////////////////////
    

    var myDate = new Date();
    let year=myDate.getFullYear();
    let month=(myDate.getMonth()+1)>9?(myDate.getMonth()+1):'0'+(myDate.getMonth()+1);
    let date=myDate.getDate()>9?myDate.getDate():'0'+myDate.getDate();
    let hours=myDate.getHours()>9?myDate.getHours():'0'+myDate.getHours()
    let minutes=myDate.getMinutes()>9?myDate.getMinutes():'0'+myDate.getMinutes()
    $("#time").val(year+'-'+month+'-'+date+'  '+hours+':'+minutes)

    // //下拉选项
    // $("#sex").select({
    //     title: "选择性别",
    //     items: [
    //         {
    //             title: "男",
    //             value: "001",
    //         },
    //         {
    //             title: "女",
    //             value: "002",
    //         }
    //     ]
    // });
    // 点击事件
    $('footer button').on('click', function (e) {
        e.preventDefault();
       let arr= $('form').serializeArray();
      
            console.log(arr);
        arr.forEach((item)=>{
            obj[item.name]=item.value;
            if(item.name=='bjrxb'){
                obj[item.name]=  $('#sex').data('values')
            }
        })
  

     
console.log($('.oldlxdh').val())
  
        Array.from($('input')).forEach((item)=>{
			if($(item).attr('name')=='lxdh' ){
						zzyz($(item),[!/^[1]([3-9])[0-9]{9}$/.test($(item).val())],'请输入正确手机号')
			}
			
            })
           
            if($('.or_content').val()==''){
            $('.or_content').addClass('error')
            }else{
            $('.or_content').removeClass('error')

            }
            Array.from($('textarea')).forEach((item)=>{
                if($(item).attr('name')=='bjnr'){
                    if($(item).val()==''){
                        $(item).addClass('error')
                    }else{
                        $(item).removeClass('error')

                    }
                }
                if($(item).attr('name')=='lxdz' ){

                    if($(item).val()==''){
                        $(item).addClass('error')
                    }else{
                        $(item).removeClass('error')
                        
                    }
                }
            })
          console.log($('.error'))     
		if($('.error').length>0){
			key=false;
        }else{
			key=true;

        }

        console.log(obj)
        console.log(key)
        console.log(base_path + '/wechatcall/wechatcallpolice')
        //alert(key)
       if(key){
       
        $.showLoading('上传数据中，请稍后');
            
        $.ajax({
            url:base_path + '/wechatcall/wechatcallpolice',
            type:'post',
            data:obj,
            dataType:'json',
           // async: false,
            // jsonpCallback:'Callback',
              success: function (msg) {
                console.log('返回数据=='+msg)
              
                 $.hideLoading();
               var opid=$("#openid").val();
                            console.log(opid)
                             if(msg=='1'){                                 
                                 $.alert({
                                        title: '',
                                        text: '提交成功',
                                        onOK: function () {
                                          //点击确认
                                            window.location.replace(base_path + '/login/PageJump?PageName=index&openid='+opid);
                                        }
                                      });
                             }else if(msg=='2'){
                                 window.alert("提交失败");
                             }else{
                                 window.alert("网络波动请重新进行录入");
                             } 


              }
        })
       }



    })


});