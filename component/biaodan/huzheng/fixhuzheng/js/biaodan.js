$(function () {
    $("#area").cityPicker({

    });
    $("#hunyin").picker({
       title: "状态",
       cols: [
           {
               textAlign: 'center',
               values: [
                   '未婚',
                   '已婚',
                   '丧偶',
                   '离婚'
                  ]
           }
       ]
   });
	  $("#pcs").picker({
	    title: "请选择派出所",
	    cols: [
	        {
	            textAlign: 'center',
	            values: [
	                '小店派出所',
	                '北格派出所',
	                '平阳路派出所',
	                '皇陵派出所',
					'北营派出所',
					'刘家堡派出所',
					'营盘派出所'
	               ]
	        }
	    ]
	});
        $('.img_i_base1').on('click', function () {
            console.log('aaa')
            $('.imgshow_base1').css('display', 'block')
        })
        $('.imgshow_base1 button').on('click', (e) => {
            e.preventDefault();
            $('.imgshow_base1').css('display', 'none')
        })
		//---------------------------------------------------------------
		$('.img_i_base2').on('click', function () {
			console.log('aaa')
			$('.imgshow_base2').css('display', 'block')
		})
		$('.imgshow_base2 button').on('click', (e) => {
			e.preventDefault();
			$('.imgshow_base2').css('display', 'none')
		})
	//---------------------------------------------------------------

	$('.img_i_base3').on('click', function () {
			$('.imgshow_base3').css('display', 'block')
		})
		$('.imgshow_base3 button').on('click', (e) => {
			e.preventDefault();
			$('.imgshow_base3').css('display', 'none')
		})
	//---------------------------------------------------------------
	$('.img_i_base4').on('click', function () {
		$('.imgshow_base4').css('display', 'block')
	})
	$('.imgshow_base4 button').on('click', (e) => {
		e.preventDefault();
		$('.imgshow_base4').css('display', 'none')
	})
	//---------------------------------------------------------------
	$('.img_i_base5').on('click', function () {
		$('.imgshow_base5').css('display', 'block')
	})
	$('.imgshow_base5 button').on('click', (e) => {
		e.preventDefault();
		$('.imgshow_base5').css('display', 'none')
	})
	//---------------------------------------------------------------


	// $('footer button').on('click',function (e) {
    //         e.preventDefault()
    //         window.location.href='../../tab/tab2/tab_list1.html'
    //     })


		let k=1;
    $('.tianjia').on('click',$('.box'),function () {
		k++;
		let id='guanxi'+k
        let  str=`
           <div class="boxs">
                <span class="del"></span>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">成员姓名：</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" placeholder="请输入成员姓名">
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">身份证号：</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" placeholder="请输入身份证信息">
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label  class="weui-label">关系：</label></div>
                    <div class="weui-cell__bd">
                        <input id="${id}" class="weui-input" placeholder="请选择">
                    </div>
                </div>
            </div>
        `
        $('.chengyuan').append(str)
		 $("#"+id).picker({
		    title: "状态",
		    cols: [
		        {
		            textAlign: 'center',
		            values: [
		                '父子',
		                '父女',
		                '母子',
		                '母女',
						'配偶'
		               ]
		        }
		    ]
		});
    $('.del').on('click',function () {
       $(this).parent().remove()
   })
	})



})