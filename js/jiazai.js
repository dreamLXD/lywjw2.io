
function jiazai(text) {
    if(!text){
        text='正在提交中'
    }
    
	let str = `
    <div class="fixbox" style='display:block'>
		<div class='jzbox'>
			<div class="fixbox_cont"> </div>
		</div>
    </div>
    `
	$('body').append(str)

	let str1 = `
	<style>
		.jzbox{
			width:70%;
			height:50vw;
			padding-top:8%;
			box-sizing: border-box;
			border-radius:15px;
			position: absolute;
			left:50%;
			top:50%;
			transform: translate(-50%,-50%);
		}
        .fixbox{
            position: fixed;
            width: 100%;
            height: 100%;   
             z-index:9999;
			 top:0;
			 left:0;
            background-color: rgba(0,0,0,0.5)

        }
        .fixbox_title{
            width:100%;
            height:20px;
            text-align:center;
             color:#666;
        }
        .fixbox_cont{
            background:url('http://lywjw.cn/lyswjw_wechat/webpage/lywjw/lyswjwwx/img/jiazai4.png') no-repeat center;
            background-size: cover;
            width: 80px;
			height: 80px;
			display:inline-block;
			animation: move 2s infinite linear; 
			position: relative;
			left:50%;
			top:20px;
			transform: translate(-50%,0%);
        } 
        @keyframes move{
            0%{
                transform: translate(-50%,0%) rotateZ(0deg);
            }
            100%{
                transform: translate(-50%,0%) rotateZ(720deg);
            }
        }
    </style>
    `
	$('head').append(str1)
}
function jiazaiHid() {
	$('.fixbox').css('display', 'none')
}
    // jiazaiHid() //隐藏加载
