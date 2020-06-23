$(function () {

	$('footer a').on('click', function (e) {
		e.preventDefault();
		let arr = $('form').serializeArray()
		if(arr.length==0){
		$.toptip('请选择选项',2000, 'error');
		}else{
				console.log(arr)
		}
	
	})
  })