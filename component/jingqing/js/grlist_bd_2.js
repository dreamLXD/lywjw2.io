$(function () {

    let openid=$('#openid').val();
    let sjdbh=$('#sjdbh').val()


    function dsr_str(num,zp,obj){
        return `<div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">姓名：</label><span class="del"></span>
            </div>
            <div class="weui-cell__bd padr_40">
                <input class="weui-input" required name="new_xm_one${num}" value='${obj.mc}' placeholder="请输入姓名">
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">联系电话：</label>
            </div>
            <div class="weui-cell__bd padr_40">
                <input class="weui-input" required name="new_dh_one${num}" value='${obj.tel}' placeholder="请输入电话">
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label font_300">身份证号码/现住地址/其他:</label></div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="new_dzs_one${num}" placeholder="请输入身份证号码/现住地址/其他"
                          rows="5">${obj.sfzh}</textarea>
            </div>
        </div>
                <div class="weui-cells   weui-cells_form">
                       <div class="container">
                           <div class="weui_cells weui_cells_form">
                               <div class="weui_cell">
                                   <div class="weui_cell_bd weui_cell_primary">
                                       <div class="weui_uploader">
                                           <div class="weui_uploader_hd weui_cell">
                                               <div class="weui_cell_bd weui_cell_primary">上传现场照片
                                               </div>
                                               <i class="weui-icon-warn weui-icon_msg-primary dsr_img_i_base${num}"></i>
                                           </div>
                                           <div class="weui_uploader_bd">
                                               <ul class="weui_uploader_files dsr${num}">
                                                      ${zp}
                                               </ul>
                                               <div class="weui_uploader_input_wrp">
                                                   <input class="weui_uploader_input dsr_js_file${num}" type="file" name="img"
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
                       <div class="imgshow dsr_imgshow_base${num}">
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
`
    }
    function jzr_str(num,zp,obj){
        return `<div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">姓名：</label><span class="del"></span>
            </div>
            <div class="weui-cell__bd padr_40">
                <input class="weui-input" required name="new_xm_two${num}" value='${obj.mc}' placeholder="请输入姓名">
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">联系电话：</label>
            </div>
            <div class="weui-cell__bd padr_40">
                <input class="weui-input" required name="new_dh_two${num}" value='${obj.tel}' placeholder="请输入电话">
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label font_300">身份证号码/现住地址/其他:</label></div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="new_dzs_two${num}" placeholder="请输入身份证号码/现住地址/其他"
                          rows="5">${obj.sfzh}</textarea>
            </div>
        </div>
                <div class="weui-cells   weui-cells_form">
                       <div class="container">
                           <div class="weui_cells weui_cells_form">
                               <div class="weui_cell">
                                   <div class="weui_cell_bd weui_cell_primary">
                                       <div class="weui_uploader">
                                           <div class="weui_uploader_hd weui_cell">
                                               <div class="weui_cell_bd weui_cell_primary">上传现场照片
                                               </div>
                                               <i class="weui-icon-warn weui-icon_msg-primary jzr_img_i_base${num}"></i>
                                           </div>
                                           <div class="weui_uploader_bd">
                                               <ul class="weui_uploader_files jzr${num}">
                                                      ${zp}
                                               </ul>
                                               <div class="weui_uploader_input_wrp">
                                                   <input class="weui_uploader_input jzr_js_file${num}" type="file" name="img"
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
                       <div class="imgshow jzr_imgshow_base${num}">
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
`
    }



    //视频上传
	$('.imgshow').on('click', function (e) {
	    event.stopPropagation()
	    if ($(e.target).is('.imgshow')) {
	        $('.imgshow').css('display', 'none')
	    } else {
	    }
	});


	$('#xcclxk  .img_i_base2').on('click',function(){
		if(!$(this).hasClass('xuanz')){
			$('#xcclxk').height("100%")
			$(this).addClass('xuanz')
		}else{
			$('#xcclxk').height("190px")
			$(this).removeClass('xuanz')
		}

	});


        $(function(){
					var on = $('.weui-switch').is(':checked');
						if(on){
						  $('.new_two').css('display','block')
						  $('.new_one').css('display','block')
						  $('.djshow').css('display','block')
						}else{
						  $('.new_two').css('display','none')
						  $('.new_one').css('display','none')
						  $('.djshow').css('display','none')
						}

					$('.weui-switch').on('change', function(){
			                var on = $(this).is(':checked');
			                if(on){
			                  $('.new_two').css('display','block')
							  $('.new_one').css('display','block')
							  $('.djshow').css('display','block')
			                }else{
			                  $('.new_two').css('display','none')
			                  $('.new_one').css('display','none')
							  $('.djshow').css('display','none')
			                }
			            });
               });


    //-----------------------------------------------------------------------------
    var obj = {};
    // let objzb={};

    // $('.sx').on('click',()=>{
    //     // window.location.href='./JQdw.html';
    // })

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

		$('#category').select({
		title: '警情类别',
		items: aflb,
		onClose: function (param) {
            aflx='';
            afxl='';
            $('#jqType').val('')
            $('#particular').val('')

		if(	$('#category').data('values')){
			$('#jqType').attr('disabled', false)
			$.post(base_path + "/wxzd/policeTypes", {id:$('#category').data('values')}, function (msg) {
				 aflx=[];
				for(let item of msg){
                    let obj={};

					obj={title:item['name'],value:item['id']};
					aflx.push(obj)
				}

			$('#jqType').select('update',{
					title: '警情类型',
					items:aflx,
                    onClose: function (param) {
                        afxl='';
                         afxl=[];
                        $('#particular').val('');

						if(	$('#jqType').data('values')){
							$('#particular').attr('disabled', false)
							$.post(base_path + "/wxzd/policeSubclass", {id:$('#jqType').data('values')}, function (msg) {

								afxl=[];
								for(let item of msg){
								let obj={};
								obj={title:item['name'],value:item['id']};
								afxl.push(obj)
								}

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
	});


	var data = ""
    $.post(base_path + "/wxzd/ProcessingResults", data, function (msg) {

        let jqcljg = [];
        for (let item of msg) {
            let obj = {};
            obj = {
            	title:item['name'],value:item['id']
            };

            jqcljg.push(obj)
        }
        $('#jqcljg').select({
            title: '警情处理结果',
            items: jqcljg,
        })
    })


    $('.Center').on('click', function () {
        if (!$(this).hasClass('bolck_show')) {
            $('.zhegai').addClass('bolck_show')
            $('.bolck_show').on('click',function () {
                $(this).removeClass('bolck_show')
            })
        } else {
            $(this).removeClass('bolck_show')
        }
    })


// 二维码
    var qrcode = new QRCode(document.getElementById("qrcode"), {
        width : 200,
        height : 200
    });

    qrcode.makeCode('http://lywjw.cn/lyswjw_wechat/wx/qrcode/qrCodeJump_qs?qdbh='+sjdbh+'&jyopenid='+openid+'');





    $('.xcfs_yw').css('display','none')

    $("#yes_no").select({
        title: "现场证据",
        items: [{
                title: "有",
                value: "1",
            },
            {
                title: "无",
                value: "2",
            },

        ],
        onClose:function (val) {
           if(val.data.values==1){

               $('.xcfs_yw').css('display','block')
           }else {
               $('.xcfs_yw').css('display','none')

           }
        }
    });


	var data = ""
	let pcsarr=''
	$.post(base_path + "/wxzd/IncidentAddressCategory", data, function (msg) {
		let fjarr=[];
		// let fjobj=JSON.parse(msg);
		for(let item of msg){
			let obj={}
			obj={title:item['name'],value:item['id']};
			fjarr.push(obj)
		}
		$('#afcsType').select({
		title: '案发场所类别',
		items: fjarr,
		onClose: function (param) {
            $('#afType').val()
		if(	$('#afcsType').data('values')){
			$('#afType').attr('disabled', false)
			$.post(base_path + "/wxzd/IncidentAddressTypes", {id:$('#afcsType').data('values')}, function (msg) {
                 pcsarr=[];

				for(let item of msg){
					let obj={};
					obj={title:item['name'],value:item['id']};
					pcsarr.push(obj)
				}

			$('#afType').select('update',{
					title: '案发场所类型',
					items:pcsarr,

				})

			})
		}
		}
	})
	})

    // 日期控件
    var myDate = new Date();
    var year = myDate.getFullYear();
    var mon = myDate.getMonth() + 1;
    var date = myDate.getDate();
    var h = myDate.getHours();
    var m = myDate.getMinutes();
    h=h>9?h:'0'+h
    m=m>9?m:'0'+m
    mon=mon>9?mon:'0'+mon;
    date=date>9?date:'0'+date;
    $("#time").val(year+'-'+mon+'-'+date+' '+h+':'+m )
    $("#timeTwo").val($("#time").val())
    $("#time").datetimePicker({
        onChange: function (picker, values, displayValues) {
           $("#timeTwo").datetimePicker({
		   min:$('#time').val().substr(0,$('#time').val().length-6),

		});
        }
    });



    $("#timeThree").val(year+'-'+mon+'-'+date+' '+h+':'+m )
    // $("#timeThree").datetimePicker();


// file插件

$.weui = {};
$.weui.alert = function (options) {
    options = $.extend({
        title: '警告',
        text: '警告内容'
    }, options);
    var $alert = $('.weui_dialog_alert');
    $alert.find('.weui_dialog_title').text(options.title);
    $alert.find('.weui_dialog_bd').text(options.text);
    $alert.on('touchend click', '.weui_btn_dialog', function () {
        $alert.hide();
    });
    $alert.show();
};

    // 允许上传的图片类型
    var allowTypes = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'];
    // 1024KB，也就是 1MB
    var maxSize = 1024 * 1024 * 10;
    // 图片最大宽度
    var maxWidth = 300;
    // 最大上传图片数量
    var maxCount = 30;

    function fileobj(img_i_base, imgshow_base, js_file, ul) {
        console.log(ul)
        $(img_i_base).on('click', function () {

            $(imgshow_base).css('display', 'block')
        })
        $(imgshow_base + ' button').on('click', (e) => {
            e.preventDefault();
            $(imgshow_base).css('display', 'none')
        })

        $(js_file).on('change', function (event) {
            console.log(js_file)
            let then = this
            var files = event.target.files;
            // 如果没有选中文件，直接返回

            if (files.length === 0) {
                return;
            }
            for (var i = 0, len = files.length; i < len; i++) {
                var file = files[i];
                var reader = new FileReader();

                // 如果类型不在允许的类型范围内
                if (allowTypes.indexOf(file.type) === -1) {
                    $.weui.alert({
                        text: '该类型不允许上传'
                    });
                    continue;
                }

                if (file.size > maxSize) {
                    $.weui.alert({
                        text: '图片太大，不允许超过5兆上传'
                    });
                    continue;
                }

                if ($('.weui_uploader_file').length >= maxCount) {
                    $.weui.alert({
                        text: '最多只能上传' + maxCount + '张图片'
                    });
                    return;
                }

                reader.onload = function (e) {
                    var img = new Image();
                    img.onload = function () {
                        // 不要超出最大宽度
                        var w = Math.min(maxWidth, img.width);
                        // 高度按比例计算
                        var h = img.height * (w / img.width);
                        var canvas = document.createElement('canvas');
                        var ctx = canvas.getContext('2d');
                        // 设置 canvas 的宽度和高度
                        canvas.width = w;
                        canvas.height = h;
                        ctx.drawImage(img, 0, 0, w, h);
                        var base64 = canvas.toDataURL('image/png');

                        // 插入到预览区
                        var $preview = $(`<li class="weui_uploader_file weui_uploader_status" style="background-image:url('${base64} ')">
		                                <div class="weui_uploader_status_content">0%</div>
		                      
		                    <div class="fgc"></div></li>`);
                        // var $preview = $('<li class="weui_uploader_file
						// weui_uploader_status" style="background-image:url(' +
						// base64 + ')"><div
						// class="weui_uploader_status_content">0%</div></li>');


                        $(ul).append($preview);
                        // debugger;
                        var num = $('.weui_uploader_file').length;
                        $('.js_counter').text(num + '/' + maxCount);

                        // 然后假装在上传，可以post base64格式，也可以构造blob对象上传，也可以用微信JSSDK上传

                        var progress = 0;
                        $('.fgc').on('click', function(event) {
                            event.preventDefault();
                            $(this).parent().remove()
                        });
                        function uploading() {
                            $preview.find('.weui_uploader_status_content').text(++progress + '%');
                            if (progress < 100) {
                                setTimeout(uploading, 30);
                            } else {
                                // 如果是失败，塞一个失败图标
                                $preview.find('.weui_uploader_status_content').html('<i class="weui_icon_warn"></i>');
                                $preview.removeClass('weui_uploader_status').find('.weui_uploader_status_content').remove();
                            }
                        }
                        setTimeout(uploading, 10);
                    };

                    img.src = e.target.result;
                };
                reader.readAsDataURL(file);

            }

        });



    }





let key2=false;

    //驳回弹窗显示
    $('.show').on('click', function (e) {

        $(".my_preview").css( 'display','block')

         $("#dqtype").select({
             title: "代签原因",
             items: [{
                 title: "当事人不愿意签字",
                 value: 1
             },
                 {
                     title: "当事人拒绝签字",
                     value: 2
                 }
             ]
         });

     })

     let dqtype
     let reason

     $('.del_close').on('click', function (e) {
          $(".my_preview").css( 'display','none')

          dqtype=$('#dqtype').val('')
          reason=$('#reason').val('')

     })
     $('.newsubmit').on('click', function (e) {

        dqtype=$('#dqtype').data('values');
        reason=document.getElementById('reason').value;
         console.log(reason)
         console.log(dqtype)

         $(".my_preview").css( 'display','none')

          key2=true;
          console.log(key2)
     })



     let key3=false;




        //当事人：移动 见证人：移动
        function filestr(arr_file, ul, onefile) {
            arr_file = [];
            $(ul + ' li').each(function (i, item) {
                let str = $(item).css('background-image').length - 4;
                arr_file.push($(item).css('background-image').substring(5, str))
            })

            let str_arr = '';
            arr_file.forEach((item, k) => {
                str_arr = item + '||' + str_arr
            })

            obj[onefile] = str_arr;

        }

    fileobj('.img_i_base1', '.imgshow_base1', '.js_file1', '.one')
    fileobj('.img_i_base2', '.imgshow_base2', '.js_file2', '.two')
    fileobj('.img_i_base3', '.imgshow_base3', '.js_file3', '.three')
    fileobj('.img_i_base4', '.imgshow_base4', '.js_file4', '.four')
    fileobj('.img_i_base5', '.imgshow_base5', '.js_file5', '.five')
    //当事人：添加 见证人：添加
    fileobj('.dsr_img_i_base1', '.dsr_imgshow_base1', '.dsr_js_file1', '.dsr1')
    fileobj('.jzr_img_i_base1', '.jzr_imgshow_base1', '.jzr_js_file1', '.jzr1')



// 初始化渲染----------------------------------------------------------------------------------------------------------------
var num=1;
var num2=1;
$.ajax({
        url:base_path + '/querypolice/data_zc',
        type:'post',
        data:{'sjdbh':$('#sjdbh').val()},
        dataType:'json',
        success:function (msg) {
            console.log(msg)
           // console.log(msg.record.xczj)
            if(msg.record.afcslb!=0){
                $('#afcsType').attr('data-values',msg.record.afcslb_id)
                $('#afcsType').val(msg.record.afcslb)
            }

            if(msg.record.afcslx!=0){
                $('#afType').attr('data-values',msg.record.afcslx_id)
                $('#afType').val(msg.record.afcslx)
            }

            if(msg.record.jqlbdm!=0){
                $('#category').attr('data-values',msg.record.jqlbdm_id)
                $('#category').val(msg.record.jqlbdm)
            }

            if(msg.record.jqlxdm!=0){
                $('#jqType').attr('data-values',msg.record.jqlxdm_id)
                $('#jqType').val(msg.record.jqlxdm)
            }

            if(msg.record.jqxldm!=0){
                $('#particular').attr('data-values',msg.record.jqxldm_id)
                $('#particular').val(msg.record.jqxldm)
            }

            if(msg.record.jqcljg!=0){
                $('#jqcljg').attr('data-values',msg.record.jqcljg_id)
                $('#jqcljg').val(msg.record.jqcljg)
            }

            if(msg.record.afdlwz!=0){
                $('#afdlwz').val(msg.record.afdlwz)
            }

            if(msg.record.xcclqk!=0){
                $('#xcclqk').val(msg.record.xcclqk)
            }

            if(msg.record.swrs!=0){
                $('#swrs').val(msg.record.swrs)
            }

            if(msg.record.ssrs!=0){
                $('#ssrs').val(msg.record.ssrs)
            }

            if(msg.record.zjjjss!=0){
                $('#zjjjss').val(msg.record.zjjjss)
            }

            if(msg.record.xczj!=0){
                if(msg.record.xczj=1){
                    $('#yes_no').val("有")
                }else{
                    $('#yes_no').val("无")
                }
                
            }

            if(msg.record.zwfs!=0){
                $('#zwfs').val(msg.record.zwfs)
            }

            if(msg.record.ddxcsj!=0){
                $('#timeThree').val(msg.record.ddxcsj)
            }

            if(msg.record.afsj!=0){
                $('#time').val(msg.record.afsj)
            }

            if(msg.record.afjssj!=0){
                $('#timeTwo').val(msg.record.afjssj)
            }
      
            let cspstr= ``;
            let czpstr= ``;
            let dsrstr= ``;
            let jzrstr= ``;


            // 视频渲染

            if(msg.SpList.length!=0 ){
                msg.SpList.forEach((item)=>{
                    cspstr+=`
                <div class='video_box'>
                <video src = "http://lywjw.cn/lyswjw_wechat/upload/${item.ZPNAME}"
                class = "showVideo${num}"
                controls style = "height: 200px" id='${item.id}'></video>
                <span> </span>
                </div>
                `
                })
                $('#video').append(cspstr)
                vdkey=$('#video video').length
            }


            // 照片渲染
            if(msg.list2.length!=0){
                msg.list2.forEach((item)=>{
                    czpstr+=`<li class="weui_uploader_file " style="background-image:url('${item.photoes} ')"><div class="fgc"></div>
                </li>`
                })
                $(".one").append(czpstr)
                $('.fgc').on('click', function(event) {
                    event.preventDefault();
                    $(this).parent().remove()
                });
            }


            //当事人照片渲染
            if(msg.PartyList.length!=0){
                $('.new_xm_one').val(msg.PartyList[0].mc)
                $('.new_dh_one').val(msg.PartyList[0].tel)
                $('.new_dzs_one').val(msg.PartyList[0].sfzh)
                if( msg.PartyList[0].dsr_photo.length!=0){
                    msg.PartyList[0].dsr_photo.forEach((item)=>{
                        dsrstr+=`<li class="weui_uploader_file " style="background-image:url('${item.photoes} ')"><div class="fgc"></div>
                        </li>`
                    })
                    $(".dsr1").append(dsrstr)
                }

                msg.PartyList.forEach((item,k)=>{
                    if(k>=1){
                        num++;
                        let zpstr='';

                        if(item.dsr_photo.length!=0){
                            item.dsr_photo.forEach((item)=>{
                                zpstr+=`<li class="weui_uploader_file " style="background-image:url('${item.photoes} ')"><div class="fgc"></div>
                                </li>`
                            })
                            console.log(k)
                        }


                        let dsrobj={'mc':item.mc,'tel':item.tel,'sfzh':item.sfzh}
                        $('.new_one').append(dsr_str(k+1,zpstr,dsrobj))



                        fileobj('.dsr_img_i_base'+(k+1), '.dsr_imgshow_base'+(k+1), '.dsr_js_file'+(k+1), '.dsr'+(k+1))

                        filestr('arr_file'+(k+1), '.dsr'+(k+1), 'dsr_photoes'+(k+1))




                    }
                })
            }



            //见证人照片渲染
            if(msg.WitnessList.length!=0){
                $('.new_xm_two').val(msg.WitnessList[0].mc)
                $('.new_dh_two').val(msg.WitnessList[0].tel)
                $('.new_dzs_two').val(msg.WitnessList[0].sfzh)


                if(msg.WitnessList[0].jzr_photo.length!=0){
                    msg.WitnessList[0].jzr_photo.forEach((item)=>{
                        console.log('item',item)
                        jzrstr+=`<li class="weui_uploader_file " style="background-image:url('${item.photoes} ')"><div class="fgc"></div>
                    </li>`
                    })
                }
                    $(".jzr1").append(jzrstr)
                    msg.WitnessList.forEach((item,k)=>{
                        if(k>=1){
                            num2++;

                            let zpstr='';
                            if(item.jzr_photo.length!=0){
                                item.jzr_photo.forEach((item)=>{
                                    zpstr+=`<li class="weui_uploader_file " style="background-image:url('${item.photoes} ')"><div class="fgc"></div>
                                </li>`
                                })
                            }
                            let jzrobj={'mc':item.mc,'tel':item.tel,'sfzh':item.sfzh}
                            $('.new_two').append(jzr_str(k+1,zpstr,jzrobj))

                            fileobj('.jzr_img_i_base'+(k+1), '.jzr_imgshow_base'+(k+1), '.jzr_js_file'+(k+1), '.jzr'+(k+1))
                            filestr('arr_file'+(k+1), '.jzr'+(k+1), 'jzr_photoes'+(k+1))

                        }
                    })


            }

            //////////////////////////////////////
            $('.del').on('click', function () {
                $(this).parent().parent().parent().remove();
                $(this).parent().parent().parent().children('.weui-input').attr('name', '')
            })
            $('.fgc').on('click', function(event) {
                event.preventDefault();
                $(this).parent().remove()
            });

        }

    })


    // var num = 1;
    $('.tj_one').on('click', function () {
        num++;
        console.log(num)
        let str = `<div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">姓名：</label><span class="del"></span>
            </div>
            <div class="weui-cell__bd padr_40">
                <input class="weui-input" required name="new_xm_one${num}" placeholder="请输入姓名">
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">联系电话：</label>
            </div>
            <div class="weui-cell__bd padr_40">
                <input class="weui-input" required name="new_dh_one${num}" placeholder="请输入电话">
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label font_300">身份证号码/现住地址/其他:</label></div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="new_dzs_one${num}" placeholder="请输入身份证号码/现住地址/其他"
                          rows="5"></textarea>
            </div>
        </div>
                <div class="weui-cells   weui-cells_form">
                       <div class="container">
                           <div class="weui_cells weui_cells_form">
                               <div class="weui_cell">
                                   <div class="weui_cell_bd weui_cell_primary">
                                       <div class="weui_uploader">
                                           <div class="weui_uploader_hd weui_cell">
                                               <div class="weui_cell_bd weui_cell_primary">上传现场照片
                                               </div>
                                               <i class="weui-icon-warn weui-icon_msg-primary dsr_img_i_base${num}"></i>
                                           </div>
                                           <div class="weui_uploader_bd">
                                               <ul class="weui_uploader_files dsr${num}">
                                               </ul>
                                               <div class="weui_uploader_input_wrp">
                                                   <input class="weui_uploader_input dsr_js_file${num}" type="file" name="img"
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
                       <div class="imgshow dsr_imgshow_base${num}">
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

`
        $('.new_one').append(str)

        $('.del').on('click', function () {
            $(this).parent().parent().parent().remove();
            $(this).parent().parent().parent().children('.weui-input').attr('name', '')
        })

         //当事人：添加  见证人：添加
         console.log(num2)
         for(let i=2;i<=num;i++){
            console.log(i)
            fileobj('.dsr_img_i_base'+i, '.dsr_imgshow_base'+i, '.dsr_js_file'+i, '.dsr'+i)
            filestr('arr_file'+i, '.dsr'+i, 'dsr_photoes'+i)
            // fileobj('.dsr_img_i_base'+i, '.dsr_imgshow_base'+i, '.dsr_js_file'+i, '.dsr'+i)

        }
        console.log('aaa')
       console.log(obj)
    })


    // obj['dsrnum']=num;

    // var num2 =1;

    $('.tj_two').on('click', function () {
        num2++;
        let str = `<div class="weui-cells weui-cells_form">
                     <div class="weui-cell">
                         <div class="weui-cell__hd"><label class="weui-label">姓名：</label><span class="del"></span>
                         </div>
                         <div class="weui-cell__bd padr_40">
                             <input class="weui-input" required name="new_xm_two${num2}" placeholder="请输入姓名">
                         </div>
                     </div>
                     <div class="weui-cell">
                         <div class="weui-cell__hd"><label class="weui-label">联系电话：</label>
                         </div>
                         <div class="weui-cell__bd padr_40">
                             <input class="weui-input" required name="new_dh_two${num2}" placeholder="请输入电话">
                         </div>
                     </div>
                     <div class="weui-cell">
                         <div class="weui-cell__hd"><label class="weui-label font_300">身份证号码/现住地址/其他:</label></div>
                     </div>
                     <div class="weui-cell">
                         <div class="weui-cell__bd">
                             <textarea class="weui-textarea" name="new_dzs_two${num2}" placeholder="请输入身份证号码/现住地址/其他"
                                       rows="5"></textarea>
                         </div>
                     </div>

                     <div class="weui-cells   weui-cells_form">
                       <div class="container">
                           <div class="weui_cells weui_cells_form">
                               <div class="weui_cell">
                                   <div class="weui_cell_bd weui_cell_primary">
                                       <div class="weui_uploader">
                                           <div class="weui_uploader_hd weui_cell">
                                               <div class="weui_cell_bd weui_cell_primary">上传现场照片
                                               </div>
                                               <i class="weui-icon-warn weui-icon_msg-primary jzr_img_i_base${num2}"></i>
                                           </div>
                                           <div class="weui_uploader_bd">
                                               <ul class="weui_uploader_files jzr${num2}">
                                               </ul>
                                               <div class="weui_uploader_input_wrp">
                                                   <input class="weui_uploader_input jzr_js_file${num2}" type="file" name="img"
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
                       <div class="imgshow jzr_imgshow_base${num2}">
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
`
        $('.new_two').append(str)

        $('.del').on('click', function () {
            $(this).parent().parent().parent().remove();
            $(this).parent().parent().parent().children('.weui-input').attr('name', '')
        })

        //当事人：添加  见证人：添加
        for(let i=2;i<=num2;i++){
            console.log(i)
            fileobj('.jzr_img_i_base'+i, '.jzr_imgshow_base'+i, '.jzr_js_file'+i, '.jzr'+i)
        console.log('abc',i)
            filestr('arr_file'+i, '.jzr'+i, 'jzr_photoes'+i)

        }


        obj['jzrnum']=num2


    })

    // obj['jzrnum']=num2


    // $('.del').on('click', function () {
    // $(this).parent().parent().parent().remove()
    // })
    // obj.formFile=formFile;
//     onload="handleFj(this)"




    $('#submit').on('click', function () {
    console.log("a")

        $('#signupForm').submit();
    console.log(num)
    filestr('arr_file', '.dsr1', 'dsr_photoes1')
    filestr('arr_file', '.jzr1', 'jzr_photoes1')
                //当事人：添加  见证人：添加
             if(num>=2){
                for(let i=2;i<=num;i++){
                    filestr('arr_file', '.dsr'+i, 'dsr_photoes'+i)
                }
                filestr('arr_file1', '.dsr1', 'dsr_photoes1')

             }
             if(num2>=2){
                for(let i=2;i<=num2;i++){
                    filestr('arr_file', '.jzr'+i, 'jzr_photoes'+i)
                }
                filestr('arr_file1', '.jzr1', 'jzr_photoes1')

             }
             console.log($('.new_one .weui-cells_form'))
             obj['dsrnum']=$('.new_one >.weui-cells_form').length;
             obj['jzrnum']=$('.new_two >.weui-cells_form').length;


        $('.inp_hidden').val($('#video video').length);

        let spfs= $('.inp_hidden').val();



        let arr = $('form').serializeArray();
        if ($('#style').data('values')) {
            let vals = $('#style').data('values')
            arr[0].value = 0;
            arr[0].value = vals;
        }

let oldxczj=$('#yes_no').val()


obj['dqtype'] = dqtype;
obj['reason'] = reason;


        obj['aflng']='';
        obj['aflat']='';

        if(dwobj.lng){

            obj['aflng']=dwobj.lng;
            obj['aflat']=dwobj.lat;
        }

        var party = '';
        var witness = '';

        arr.forEach((item, k) => {
            obj[item.name] = item.value;



            if (item.name == 'dqtype') {
				obj[item.name] = $('#dqtype').data('values')
			}

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

	//		if (item.name == 'xczj') {
        //                      obj[item.name] = $('#yes_no').data('values')
	//		}

                        if (item.name == 'xczj') {

                            if(oldxczj=="无"){
                                  obj[item.name] ="2"
                              }else{
                                  obj[item.name] = "1"
                             }

			}

            if (item.name == 'xb') {
                obj[item.name] = $('#sex').data('values')
            }


            if (item.name.match('new_xm_one')) {
                party += item.value + ','
            }
            if (item.name.match('new_dh_one')) {
                party += item.value + ','
            }
            if (item.name.match('new_dzs_one')) {
                party += item.value + '||'
            }
            if (item.name.match('new_xm_two')) {
                witness += item.value + ','
            }
            if (item.name.match('new_dh_two')) {
                witness += item.value + ','
            }
            if (item.name.match('new_dzs_two')) {
                witness += item.value + '||'
            }
        })




        obj['dqtype']=dqtype;
        obj['reason']=reason;


      //  party = party.substr(0, party.length - 2);
       // witness = witness.substr(0, witness.length - 2);

        function filestr(arr_file, ul, onefile) {
            arr_file = [];
            $(ul + ' li').each(function (i, item) {
                let str = $(item).css('background-image').length - 4;
                arr_file.push($(item).css('background-image').substring(5, str))
            })

            console.log()
            let str_arr = '';


            arr_file.forEach((item, k) => {
                str_arr = item + '||' + str_arr
            })

            obj[onefile] = str_arr;

        }


        filestr('arr_file1', '.one', 'photoes')


            obj['party'] = party;
            obj['witness']=witness;




          if(obj.spfs== '0'){
              $.alert({
                  title: '请认真检查出警单',
                  text: '注意视频是否已经添加,或信息未填写完整',
                  onOK: function () {
                      // 点击确认
                	  return false;
                  }
              });
              key=false;
          }else if(obj.zpfs=='0'){
                $.alert({
                    title: '请认真检查出警单',
                    text: '注意照片是否已经添加,或信息未填写完整',
                    onOK: function () {
                        // 点击确认
                    	 return false;
                    }
                });
                key=false
            }
//
            // if(key &&( obj.zpfs!='0') && (obj.spfs!= '0')){


                if(true){


                    $.showLoading('视频还在上传中，请稍等')
            		Fniframe(this,obj)




            }else{
                // $.toast('请上传视频和图片',3000)
            }


console.log("a")

console.log(obj)

             function Fniframe(item,obj){


                let set=setInterval(function () {
                    if(vdkey == $('#video .video_box').length){
                        clearInterval(set)
                        $.hideLoading();
                        $.alert({
                            title: '数据提交中',
                            text: '请稍候',
                            onOK: function () {
                                $.showLoading('正在上传数据')
                                console.log(obj)
                                $.ajax({
                                    url:base_path + '/wechatcall/wechatalarmlist',
                                    type:'post',
                                    data:obj,
                                    dataType:'json',
//                                                   async: false,
                                    success:function (msg) {
                                        var openid=$("#openid").val();
                                        console.log(msg)
                                        if(msg=='1'){
                                            $.hideLoading()

                                            $.alert({
                                                title: "",
                                                text:"提交成功",
                                                onOK: function () {
                                                    window.location.replace(base_path + '/login/PageJump?PageName=police&openid='+openid);
                                                    $.showLoading("正在返回首页")

                                                }

                                            });
//                										 window.location.replace( 'http://18671w95w0.imwork.net/lyswjw_wechat/wx/login/PageJump?PageName=police&openid='+openid);
                                        }else if(msg=='2'){
                                            $.hideLoading()
                                            $.toast("提交失败");

                                        }else{
                                            $.hideLoading()
                                            $.toast("网络波动请重新进行录入");

                                        }
                                    }
                                })
                            }
                        });
                    }else{
                        $.toast('视频还在上传中',3000)

                    }
                },1000)


            	}
    })
    // $('footer button').on('click', function (e) {
    // e.preventDefault();
    //
    // })

     //暂存
   let sjdbh2=$('#sjdbh').val()

function zancun(){
    //    $('#signupForm').submit();


       //当事人：添加  见证人：添加
       for(let i=2;i<=num;i++){
           filestr('arr_file', '.dsr'+i, 'dsr_photoes'+i)
       }
       filestr('arr_file1', '.dsr1', 'dsr_photoes1')
       for(let i=2;i<=num2;i++){
           filestr('arr_file', '.jzr'+i, 'jzr_photoes'+i)
       }
       filestr('arr_file1', '.jzr1', 'jzr_photoes1')


   $('.inp_hidden').val($('#video video').length);


   let spfs= $('.inp_hidden').val();


   let arr = $('form').serializeArray();
   if ($('#style').data('values')) {
   let vals = $('#style').data('values')
   arr[0].value = 0;
   arr[0].value = vals;
   }

   let oldxczj=$('#yes_no').val()
   console.log(oldxczj)

   obj['dqtype'] = dqtype;
   obj['reason'] = reason;


   obj['aflng']=loc.lng;
   obj['aflat']=loc.lat;

   if(dwobj.lng){

   obj['aflng']=dwobj.lng;
   obj['aflat']=dwobj.lat;
   }

   var party = '';
   var witness = '';

   arr.forEach((item, k) =>{
   obj[item.name] = item.value;
   if (item.name == 'dqtype') {
       obj[item.name] = $('#dqtype').data('values')
   }
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

   //		if (item.name == 'xczj') {
   //                      obj[item.name] = $('#yes_no').data('values')
   //		}

               if (item.name == 'xczj') {

                   if(oldxczj=="无"){
                         obj[item.name] ="2"
                     }else{
                         obj[item.name] = "1"
                    }

   }

   if (item.name == 'xb') {
       obj[item.name] = $('#sex').data('values')
   }


   if (item.name.match('new_xm_one')) {
       party += item.value + ','
   }
   if (item.name.match('new_dh_one')) {
       party += item.value + ','
   }
   if (item.name.match('new_dzs_one')) {
       party += item.value + '||'
   }
   if (item.name.match('new_xm_two')) {
       witness += item.value + ','
   }
   if (item.name.match('new_dh_two')) {
       witness += item.value + ','
   }
   if (item.name.match('new_dzs_two')) {
       witness += item.value + '||'
   }
   })




   obj['dqtype']=dqtype;
   obj['reason']=reason;


   //  party = party.substr(0, party.length - 2);
   // witness = witness.substr(0, witness.length - 2);



   function filestr(arr_file, ul, onefile) {
   arr_file = [];
   $(ul + ' li').each(function (i, item) {
       let str = $(item).css('background-image').length - 4;
       arr_file.push($(item).css('background-image').substring(5, str))
   })
   let str_arr = '';
   arr_file.forEach((item, k) => {
       str_arr = item + '||' + str_arr
   })
   obj[onefile] = str_arr;
   }



   filestr('arr_file1', '.one', 'photoes')
   obj['zpfs']=$('.weui_uploader_files.one li').length
   obj['party'] = party;
   obj['witness']=witness


   //






    function Fniframe(item,obj,set){

           if(vdkey == $('#video .video_box').length){

               $.hideLoading()
               clearInterval(set)
               $.toast('暂存视频成功',1000)
                  $.alert({
                       title: '数据提交中',
                       text: '请稍候',
                       onOK: function () {
                           $.showLoading()
                            console.log(obj)

                                      $.ajax({
                                          url:base_path + '/wechatcall/wechatalarmlist_zc',
                                          type:'post',
                                          data:obj,
                                          dataType:'json',
   //                                                   async: false,
                                          success:function (msg) {
                                              var openid=$("#openid").val();
                                                  console.log(msg)
                                              if(msg=='1'){
                                               $.hideLoading()

                                                  $.alert({
                                             title: "",
                                             text:"暂存成功",
                                             onOK: function () {
                                               window.location.reload()
                                             },
                                             onCancel: function () {
                                                 log("cancel");
                                             }
                                     });
   //       window.location.replace( 'http://18671w95w0.imwork.net/lyswjw_wechat/wx/login/PageJump?PageName=police&openid='+openid);
                                              }else if(msg=='2'){
                                                $.toast("暂存失败");
                                                $.hideLoading()
                                              }else{
                                                  $.toast("网络波动请重新进行录入");
                                              $.hideLoading()
                                              }


                               }
                                      })
                       }
                   });
           }


   }
       if(true){

           let set=setInterval(function () {
               Fniframe(this,obj,set)
           },1000)


       }
      }


      $('.history').on('click',function(){
       $.showLoading('提交视频中');

            let numvideo=$('#video .video_box').length;
            console.log(openid,numvideo,sjdbh)
          // if($('#video .video_box')){
          //   $('#video').attr('action',base_path + '/wechatcall/vedio?openid='+openid+'&oldspfs='+numvideo+'&sjdbh='+sjdbh+'')
          // }
       obj['jzrnum']=$('.new_two>.weui-cells_form').length;
       obj['dsrnum']=$('.new_one>.weui-cells_form').length;
       if($(this).hasClass('history_tg')){
           $(this).removeClass('history_tg')
       }else{
           $(this).addClass('history_tg')
       }
       zancun()
      })





});

// $.showLoading()


//删除视频
