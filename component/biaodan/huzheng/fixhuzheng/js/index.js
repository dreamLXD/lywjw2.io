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
		if (item.name.match('ysqrgx')) {
		    let k = item.name.split('ysqrgx')[1];
		
		    if (k == '') {
		        newstr += $(`#ysqrgx`).data('values') + '||'
		    } else {
		        newstr += $(`#ysqrgx${k}`).data('values') + '||'
		
		    }
		}
		
		// 最好在arr.forEach后面测试一下
		console.log(newstr)


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
						if(	$('#idpcsddd').data('values')){
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
										$('.lihun1').css('display', 'none')
										$('.jiehun1').css('display', 'none')
										$('.fanwu1').css('display', 'none')
										$('.three').html('')
										$('.four').html('')
										$('.five').html('')
										if ($('#style').data('values') == '1') {
											$('.fanwu1').css('display', 'block')
										} else if ($('#style').data('values') == '2') {
												$('.lihun1').css('display', 'block')
										} else {
												$('.jiehun1').css('display', 'block')
										}
									}
								});
							
						}
					}
				})
			
		}
		}
	})
