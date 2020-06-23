
    var dwstr='';
    var loc;
    var obj={};
    obj.lat='';
    obj.lng='';
    //监听定位组件的message事件
    window.addEventListener('message', function (event) {
        loc = event.data; // 接收位置信息
        console.log('location', loc);
        // dwstr=loc.addr;
     
        obj.dldw=loc.city;
        $('.or_content').text(obj.dldw);
      
        // console.log(dwobj);
        // let or_content = document.getElementsByClassName('or_content')[0];

        // or_content.innerHTML = loc.addr;

        if (loc && loc.module == 'geolocation') { //定位成功,防止其他应用也会向该页面post信息，需判断module是否为'geolocation'
            // var markUrl = 'https://apis.map.qq.com/tools/poimarker' + '?marker=coord:' + loc.lat + ',' + loc.lng + ';title:我的位置;addr:' + (loc.addr || loc.city) + '&key=7PCBZ-SJ6WQ-J2I5Y-GZIOV-5GZ5F-X7BZL&referer=linyiditu';
            // //给位置展示组件赋值
            // document.getElementById('markPage').src = markUrl;
        } else { //定位组件在定位失败后，也会触发message, event.data为null
            // alert('定位失败');
        }



    }, false);
    //为防止定位组件在message事件监听前已经触发定位成功事件，在此处显示请求一次位置信息
    document.getElementById("geoPage").contentWindow.postMessage('getLocation', '*');

    //设置6s超时，防止定位组件长时间获取位置信息未响应
    setTimeout(function () {
        if (!loc) {
            //主动与前端定位组件通信（可选），获取粗糙的IP定位结果
            document.getElementById("geoPage")
                .contentWindow.postMessage('getLocation.robust', '*');
        }
    }, 6000); //6s为推荐值，业务调用方可根据自己的需求设置改时间，不建议太短

//本地定位
// function getLocation(){    //检测是否支持地理定位 如果支持，则运行 getCurrentPosition() 方法。如果不支持，则向用户显示一段消息。
//     if (navigator.geolocation){//如果getCurrentPosition()运行成功， //则向参数showPosition中规定的函数返回一个coordinates对象
//         navigator.geolocation.getCurrentPosition(showPosition);
//     }else{
//         x.innerHTML="地理位置浏览器支持";
//     }
// }
//
// function showPosition(position){  //showPosition() 函数获得并显示经度和纬度
//     console.log(position.coords.latitude,position.coords.longitude)
//     // x.innerHTML="纬度: " + position.coords.latitude + "<br />经度: " + position.coords.longitude;
//     // x2.innerHTML= +position.coords.latitude +","+position.coords.longitude;
// }
// getLocation()
