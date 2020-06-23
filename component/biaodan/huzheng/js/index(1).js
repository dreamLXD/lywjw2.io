  // 添加时候的删除
  
   $('.del').on('click', function () {
            $(this).parent().parent().parent().remove();
			 $(this).parent().parent().parent().children('.weui-input').attr('name','')
        })
		
		
	// 写在   arr.forEach 的循环中
	var newstr = '';

		   if (item.name.match('sqrxm')) {
		    newstr += item.value + ','
		}
		if (item.name.match('sqrgmsfzhm')) {
		    newstr += item.value + ','
		}
		if (item.name.match('sqrlxdh')) {
		    newstr += item.value + ','
		}
		for (var i = 1; i <= num; i++) {
            arr.forEach((item) => {
            if (item.name == `ysqrgx${i}`) {
            obj[item.name] = $(`#resp${i}`).data('values');
            console.log($(`#resp${i}`).data('values'))
            }
            })
		
		// 最好在arr.forEach后面测试一下
    newstr = newstr.substr(0, newstr.length - 2);
        console.log(newstr)
		obj['newstr'] = newstr

// 一开始的嵌套
	$('#idpcs').attr('disabled', 'true')
	$('#style').attr('disabled', 'true')
	$('#idfj').select({
		title: '选择分局',
		items: [{
			title: "临沂兰山分局",
			value: "1",
		}, {
			title: "临沂河东分局",
			value: "2",
		}],
		onClose: function (param) {
			console.log($('#idfj').data('values'))
		if(	$('#idfj').data('values')){
				$('#idpcs').attr('disabled', false)
				$('#idpcs').select({
					title: '选择派出所',
					items: [{
						title: "临沂兰山派出所",
						value: "1",
					}, {
						title: "临沂河东派出所",
						value: "2",
					}],
					onClose: function () {
						if(	$('#idpcs').data('values')){
								$('#style').attr('disabled', false)
								$("#style").select({
									title: "选择类型",
									items: [{
											title: "居住在自有房屋的流动人口申领居住证",
											value: "1",
										},
										{
											title: "居住在出租房屋的流动人口申领居住证",
											value: "2",
										},
										{
											title: "居住在工作单位的流动人口申领居住证",
											value: "3",
										},
										{
											title: "居住在工作单位的流动人口申领居住证（单位代办）",
											value: "4",
										},
										{
											title: "居住在亲属家中的流动人口申领居住证",
											value: "5",
										},
										{
											title: "大中专学生中的流动人口申领居住证",
											value: "6",
										}
									],
									onClose: function () {
										$('.style1').css('display', 'none')
										$('.style2').css('display', 'none')
										$('.style3').css('display', 'none')
										$('.three').html('')
										$('.four').html('')
										$('.five').html('')
										if ($('#style').data('values') == '1') {
											$('.style1').css('display', 'block')
										} else if ($('#style').data('values') == '2') {
												$('.style2').css('display', 'block')
										} else {
												$('.style3').css('display', 'block')
										}
									}
								});
							
						}
					}
				})
			
		}
		}
	})



<h1>选择类型</h1>
<div class="weui-cells weui-cells_form">
	<div class="weui-cell">
		<div class="weui-cell__hd"><label class="weui-label">选择分局：</label></div>
		<div class="weui-cell__bd">
			<input class="weui-input" id="idfj" required name="blfj" placeholder="请先选择分局">
		</div>
	</div>
	<div class="weui-cell">
		<div class="weui-cell__hd"><label class="weui-label">选择派出所：</label></div>
		<div class="weui-cell__bd">
			<input class="weui-input" id="idpcs" required name="blpcs" placeholder="请选择派出所">
		</div>
	</div>
	<div class="weui-cell">
		<div class="weui-cell__hd"><label class="weui-label">类型选择：</label></div>
		<div class="weui-cell__bd">
			<input class="weui-input" id="style" required name="bltype" placeholder="类型">
		</div>
	</div>
</div>

	        if (item.name == 'blfj') {
				obj[item.name] = $('#idfj').data('values')
			}
			if (item.name == 'blpcs') {
				obj[item.name] = $('#idpcs').data('values')
			}
			if (item.name == 'bltype') {
				obj[item.name] = $('#style').data('values')
			}
			
			for (var i = 1; i <= num; i++) {
            console.log(i)
            arr.forEach((item) => {
            if (item.name == `ysqrgx${i}`) {
                console.log('s')
            obj[item.name] = $(`#resp${i}`).data('values');
            console.log($(`#resp${i}`).data('values'))
            }
            })
			}
			


			obj[item.name]=item.value;

			var url = document.location.href;
            var urlval = url.split("val=")[1];