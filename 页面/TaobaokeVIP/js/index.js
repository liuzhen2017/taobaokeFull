$(() => {

    let url = "http://mddor.cn:10086/web";

	let MyTitle ="";
//	is_weixin();
    /**
     * 获取指定参数名的值
     * @param {w} name  参数名
     */
    let getParam = (name) => {
        let reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        let r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }

    let uid = getParam('token');

    //加载网页标题
    $.getJSON(url + "/getWebSetByUid/" + uid, (res) => {
        $("marquee").text(res.title);
        MyTitle =res.title;
    });
    //加载我的分类列表
    $.getJSON(url + "/getCategoryListByUid/" + uid, (res) => {
        let arr = [];
        $.each(res, (i, v) => {
            arr.push(`<li class="cate" data-id="` + v.id + `"><a href="javascript:;">` + v.categoryName + `<i class="fa fa-chevron-right"></i></a></li>`);
        })
        $("#slide-out-left").empty().append(arr.join(''));
        //加载第一个分类的商品列表
        loadCom(res[0].id);
    });
    //加载轮播图
    $.getJSON(url + "/getPosterByUid/" + uid, (res) => {
        let arr = [];
        $.each(res, (i, v) => {
            arr.push(`<div class="slider-entry">
                            <div class="overlay"></div>
                            <img src="`+ v.imgUrl + `" >
                        </div>`);
        })
        $("#poster").empty().append(arr.join(''));
        $("body").append(`<script src="js/materialize.min.js"></script>
                            <script src="js/slick.min.js"></script>
                            <script src="js/fakeLoader.min.js"></script>
                            <script src="js/loading.js"></script>
                            <script src="js/slick.min.js"></script>
                            <script src="js/owl.carousel.min.js"></script>
                            <script src="js/lightbox.min.js"></script>
                            <script src="js/custom.js"></script>`);
    });
    // 分类点击事件
    $('html').on("click", ".cate", (e) => {
        let id = $(e.target).parents("li").attr("data-id"); //获取分类ID
        loadCom(id);
        $("#sidenav-overlay").click();
    });

    // 领取点击事件
    $('html').on("click", ".toUrl", (e) => {
        let cid = $(e.target).attr("data-id");
        var checkTimeUrl =url+"/checkTime?uid="+uid+"&cid="+cid;
 		$.getJSON(checkTimeUrl, function(data) {
 		  if(data.code =='0000'){
 		     //唤起淘宝
 		     // url ="https://alimarket.tmall.com/markets/alimama/mingdian?ali_trackid=19_0c68972edf3e119964e73aa04c727a49&spm=a2156.1676643.0009.5";
 		     //window.location.href = "https://t.asczwa.com/taobao?backurl="+data.message;
              //直接调整
			  
 			 window.location.href =data.message;
 		  }else{
				 layer.open({
	 	          content: "主播试用已经到期,请从淘客后台充值再试"
	 	          ,btn: '我知道了'
	 			});
 		  }
		});
    });

//领取点击事件
   function buyProduct(cid){
        
        var checkTimeUrl =url+"/checkTime?uid="+uid+"&cid="+cid;
 		$.getJSON(checkTimeUrl, function(data) {
 		  if(data.code =='0000'){
 		     //唤起淘宝
 		     // url ="https://alimarket.tmall.com/markets/alimama/mingdian?ali_trackid=19_0c68972edf3e119964e73aa04c727a49&spm=a2156.1676643.0009.5";
 		     //window.location.href = "https://t.asczwa.com/taobao?backurl="+data.message;
              //直接调整
			  
 			  window.location.href =data.message;
 		  }else{
				 layer.open({
	 	          content: "主播试用已经到期,请从淘客后台充值再试"
	 	          ,btn: '我知道了'
	 			});
 		  }
		});
    };

    /**
     *  加载商品分类信息
     * @param {*} id 
     */
    let loadCom = (id) => {
        $.getJSON(url + "/getComInfoList?uid=" + uid + "&cid=" + id + "&page=1&pageSize=100", (res) => {
            arr = [];
            $.each(res.list, (i, v) => {
                let com = v.commodity;
                let price = com.comPrice - com.couponPrice;
                arr.push(`<li class="item">
                            <div class="img" style="background-image:url(`+ com.comImg + `)"></div>
                            <div class="info">
                                <h5>`+ com.comName + `</h5>
                                <p>`+ com.label + `</p>
                                <h6>券后价：`+ price.toFixed(2) + `元</h6>
                                <div><i>￥`+ com.comPrice + `</i> 
                                    <span data-id="`+ com.id + `" onclick=buyProduct("`+ com.id + `") class="toUrl">去领 ` + com.couponPrice + ` 元券</span>
                                </div>
                            </div>
                        </li>`);
            })
            $("#list").empty().append(arr.join(''));
        });
    }

//function is_weixin(){
//	var ua = navigator.userAgent.toLowerCase();
//	if(ua.match(/MicroMessenger/i)=="micromessenger") {
//	   layer.open({
//	 	          content: "微信客户端被拦截了,请用手机浏览器打开.."
//	 	          ,btn: '我知道了'
//	 			});
//	} 
// }

})
