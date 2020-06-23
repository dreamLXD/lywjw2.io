
	var formFile = new FormData();
	var num = 0;	var vdkey=$('#video video').length;


    var url = null;
	var files = null;
    var oldata='';
    $('.video_btn').on('click',async function (e) {
        num++;
        let str=`  <input class="weui_uploader_input video_file${num}"  id="FileUpload" style="display:none" type="file"
                   name="movies1" accept="video/*"  multiple="false">`
        $('#video').append(str)
        $('.video_file'+num+'').click();

            $('.video_file'+num+'').on('change',await function (event) {
                // event.preventDefault()
                files = this.files[0];
                url = window.URL.createObjectURL(files);
                console.log(url);
                // $(`showVideo${num}`).css('display', 'block').attr('src', url);
                let str = `
                      <div class='video_box'>
                      <video src = "${url}"
                      class = "showVideo${num}"   
                      controls style = "height: 200px"></video>
                      </div>`;
                $('#video').append(str);
                let openid=$('#openid').val();
                let sjdbh=$('#sjdbh').val();
                let oldspfs=num;
                // $('#video').attr('action',base_path + '/wechatcall/vedio?openid='+openid+'&oldspfs='+oldspfs+'&sjdbh='+sjdbh+'')
                if($('#video video')){
                    console.log(base_path)
                    $('#video').attr('action',base_path+'/wechatcall/vedio?openid='+openid+'&oldspfs=1&sjdbh='+sjdbh)
                }
                $('.video_submit').click();



                    $('#emp_fj').load( function(){
                        vdfn(this)

                    });

            });

        function vdfn(item) {
            console.log('提交视频了');
            var responseData = item.contentDocument.body.textContent;
            console.log(responseData,oldata)
                if(responseData.split(',')[0]=== '1'){
                    if(!(responseData==oldata)){
                        let fileUpload=$('#FileUpload')[0];

                        oldata=responseData;
                        vdkey=$('#video video').length;
                        console.log(vdkey)
                        $(fileUpload).remove();
                        $('.showVideo'+num).parent().append('<span> </span>')
                        $('.showVideo'+num).attr('id',responseData.split(',')[1])
                    }


            }else {
                    $.toast('视频提交失败')
                }



        }





    });


	$("#video").delegate(".video_box span","click",function(){
		let vdid=$(this).prev().attr('id');
		console.log(vdid)
		$.showLoading()
        let then=this
		$.ajax({
			url:base_path+'/wechatcall/video_delete_new',
			type:'post',
			data:{'id':vdid},
			dataType:'json',
			success:function (msg) {
			    console.log(msg)
					if(msg==1){
						$.hideLoading()
						$.toast('删除成功',2000)
                        $(then).parent().remove('');
                        vdkey=$('#video video').length;


                    }else {
                        $.hideLoading()

                        $.toast('删除失败',2000)
                    }

			}})



})






