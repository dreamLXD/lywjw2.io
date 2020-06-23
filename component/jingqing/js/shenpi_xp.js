/**
 *作者：luck
 *功能：
 */
$(function () {

	function dataVal (jqcljg,id){
		   for (let item in jqcljg) {
		    console.log(jqcljg[item].title,$('#'+id+'').val())
		     if(jqcljg[item].title === $('#'+id+'').val()){
		      $('#'+id+'').attr('data-values',jqcljg[item].value )
		     }
		    
		   }
		   
		  }
	
    //样式---------------------------------
	var data = ""
	let pcsarr=''
    $("#yesNo").select({
        title: "类型",
        items: [{
            title: "有",
            value: 1
        },
            {
                title: "无",
                value: 2
            }
        ]
    });

	var data = ""

    $("#timeTwo").datetimePicker();
    $("#timeOne").datetimePicker();

    //----------------------------------------------
	var data = ""
		let aflb=''
		let aflx=''
		let afxl=''
		$.post(base_path + "/wxzd/policeCategory", data, function (msg) {
			
			aflb=[];
			for(let item of msg){
				let obj={}
				obj={title:item['name'],value:item['id']};
				aflb.push(obj)			
			}
			dataVal(aflb,'category')
			$('#category').select({
			title: '警情类别',
			items: aflb,
			onClose: function (param) {
			
			if(	$('#category').data('values')){
				$('#jqType').attr('disabled', false)
				$.post(base_path + "/wxzd/policeTypes", {id:$('#category').data('values')}, function (msg) {
					
					 aflx=[];
					for(let item of msg){	
						let obj={};	
						obj={title:item['name'],value:item['id']};
						aflx.push(obj)
					}	
					dataVal(aflx,'jqType')
				$('#jqType').select('update',{
						title: '警情类型',
						items:aflx,
	                    onClose: function (param) {
							
							if(	$('#jqType').data('values')){
								$('#particular').attr('disabled', false)
								$.post(base_path + "/wxzd/policeSubclass", {id:$('#jqType').data('values')}, function (msg) {
								
									afxl=[];
									for(let item of msg){	
									let obj={};	
									obj={title:item['name'],value:item['id']};
									afxl.push(obj)
									}
									dataVal(afxl,'particular')
									$('#particular').select('update',{
										
											title: '警情细类',
						                    items:afxl,
									})
					})

				}			
			}
			})
		})	
		}
		}
		})
		})
    $.post(base_path + "/wxzd/ProcessingResults", data, function (msg) {

        let jqcljg = [];
        for (let item of msg) {
            let obj = {}
            obj = {
                title:item['name'],value:item['id']
            };

            jqcljg.push(obj)
        }
        dataVal(jqcljg,'jqcljg')
        $('#jqcljg').select({
            title: '警情处理结果',
            items: jqcljg,
        })
    })
    $.post(base_path + "/wxzd/IncidentAddressCategory", data, function (msg) {

        let fjarr=[];
        // let fjobj=JSON.parse(msg);
        for(let item of msg){
            let obj={}
            obj={title:item['name'],value:item['id']};
            fjarr.push(obj)
        }
        dataVal(fjarr,'afcsType')
		$('#afcsType').select({
			title: '案发场所类别',
			items: fjarr,
			onClose: function (param) {
				
			if(	$('#afcsType').data('values')){
				$('#afType').attr('disabled', false)
				$.post(base_path + "/wxzd/IncidentAddressTypes", {id:$('#afcsType').data('values')}, function (msg) {
				
					 pcsarr=[];
					// let pcsobj=JSON.parse(msg);
					for(let item of msg){	
						let obj={};	
						obj={title:item['name'],value:item['id']};
						pcsarr.push(obj)
					}	
					dataVal(pcsarr,'afType')
				$('#afType').select('update',{
						title: '案发场所类型',
						items:pcsarr,

					})

				})			
			}
			}
		})	
    })


    let oldxczj=$('#yesNo').val()
    console.log(oldxczj)

    //---------------------------------------------

    $('ul li').on('click', function (event) {

        // $.showLoading();
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
        $('.zhegai').css({
            'display': 'none'
        });
        $('ul li').children('img').removeClass('fangda')
    })

    $('button.blue_color').on('click', function () {

        let arr= $('form').serializeArray()
        let obj={};

        arr.forEach((item, k) => {
            obj[item.name] = item.value;

            if (item.name == 'afcslb') {
                obj[item.name] = $('#afcsType').data('values')
            }
            if (item.name == 'afcslx') {
                obj[item.name] = $('#afType').data('values')
            }
            if (item.name == 'jqlbdm') {
                obj[item.name] = $('#category').data('values')
            }
            if (item.name == 'jqlxdm') {
                obj[item.name] = $('#jqType').data('values')
            }
            if (item.name == 'jqxldm') {
                obj[item.name] = $('#particular').data('values')
            }
            if (item.name == 'jqcljg') {
                obj[item.name] = $('#jqcljg').data('values')
            }

            if (item.name == 'xczj') {

                if(oldxczj=="无"){
                      obj[item.name] ="2"
                  }else{
                      obj[item.name] = "1"  
                 }
                                                      
}



        })
        // obj['lng']=loc.lng;
        // obj['lat']=loc.lat;

   
        
    let openid=$('#openid').val();
    let sjdbh=$('#sjdbh').val()
    let rzdj=$('#rzdj').val()
    
    var key1="openid"
    var key2="sjdbh"
    var key3="rzdj"

    obj[key1] = openid;
    obj[key2] = sjdbh;
    obj[key3] = rzdj;

$('form').submit()
        console.log(obj)

        $('.weui-mask.weui-mask--visible').css('visibility', 'visible')
        $('.weui-dialog.weui-dialog--visible').css('visibility', 'visible')
      if(key){
          $.alert({
              title:'提交审批',
              text:'',
              onOK: function () {
             		$.ajax({
                        url:base_path + '/wechatcall/confirm',
                        type:'post',
                        data:obj,
                        dataType:'json',
                        // async: false,
            			// jsonpCallback:'Callback',
                        success:function (msg) {
   						 var openid=$("#openid").val();
                              console.log(openid)
							   if(msg=='1'){
                                 $.hideLoading();
                                 $.toast("提交成功", 1000);
								  // window.alert("提交成功");
								 window.location.replace(base_path + '/login/PageJump?PageName=police&openid='+openid);
							   }else if(msg=='2'){
                                 //  window.alert("提交失败");
                                 $.hideLoading();
                                 $.toast("提交失败", "cancel");
                                 
							   }else{
                                  // window.alert("网络波动请重新进行录入");
                                  $.hideLoading();
                                  $.toast("网络波动请重新进行录入", "cancel");
							   }


				}
                    })

              }
          });
      }
    })
})