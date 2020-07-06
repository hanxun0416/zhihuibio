<#macro head title>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <title>${title!}</title>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="${settings.google_color!'#fff'}">
    <meta name="author" content="${user.nickname!}" />
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    <@global.head />
    <#--  <link href="//cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet"/>
    <link href="${theme_base!}/source/css/blog_basic.min.css?version=88107691fe" rel="stylesheet">
    <link href="${theme_base!}/source/css/style.min.css" type="text/css" rel="stylesheet" />  -->
    	<link rel="stylesheet" id="wphy-style-css" href="${theme_base!}/source/css/header.css" type="text/css" media="all">
		<link rel="stylesheet" id="font-awesome-css" href="${theme_base!}/source/css/font-awesome.min.css" type="text/css" media="all">
		<link href="${theme_base!}/source/css/bootstrap.min.css" rel="stylesheet">
		<link href="${theme_base!}/source/css/global.css" rel="stylesheet">
		<link href="${theme_base!}/source/css/common.css" rel="stylesheet">
		<link href="${theme_base!}/source/css/pic-center.css" rel="stylesheet">

    <#--  <#if is_post?? || is_sheet??>
        <link href="//cdn.jsdelivr.net/npm/prismjs@1.19.0/themes/prism${settings.code_pretty!}.min.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/prismjs@1.19.0/prism.min.js"></script>
        <style>
            table {
                border-spacing: 0;
                border-collapse: collapse;
                margin-top: 0;
                margin-bottom: 16px;
                display: block;
                width: 100%;
                overflow: auto;

            }
            table th {
                font-weight: 600;
            }
            table th,
            table td {
                padding: 6px 13px;
                border: 1px solid #dfe2e5;
            }
            table tr {
                background-color: #fff;
                border-top: 1px solid #c6cbd1;
            }
            table tr:nth-child(2n) {
                background-color: #f6f8fa;
            }
        </style>
    </#if>  -->

    <link rel="alternate" type="application/rss+xml" title="atom 1.0" href="${atom_url!}">
    <#--  <style>
        <#if !settings.post_title_uppper!true>
        .post .post-title h3 {
            text-transform: none;
        }
        </#if>
        <#if !settings.blog_title_uppper!true>
        .sidebar .logo-title .title h3 {
            text-transform: none;
        }
        </#if>
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
            background-color: #eee;
        }
        ::-webkit-scrollbar-thumb {
            background-color: ${settings.scrollbar!'#3798e8'};
        }
        ::-webkit-scrollbar-track {
            background-color: #eee;
        }
        ${settings.custom!}
    </style>  -->
</head>
<body>
</#macro>
<#macro footer>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/jquery@1.9.1/jquery.min.js"></script>

	<#--  <script type="text/javascript" src="./智辉生物科技有限公司_files/jquery-1.8.3.min.js"></script>  -->
		<script src="${theme_base!}/source/js/bootstrap.min.js"></script>
		<script src="${theme_base!}/source/js/bootstrap.js"></script>
		<script src="${theme_base!}/source/js/global.js"></script>
		<script type="text/javascript" src="${theme_base!}/source/js/script.min.js"></script>
		<script type="text/javascript" src="${theme_base!}/source/js/wphy.js"></script>
        <script src="${theme_base!}/source/js/ScrollPic.js" type="text/javascript" charset="utf-8"></script>

   <script type="text/javascript">
     
  window.onload=function(){


		 var a=new sHover("sHoverItem","sIntro");
		 a.set({
			slideSpeed:5,
			opacityChange:true,
		 });

	};
	
//JavaScript Document
  $(document).ready(function(){	

  //首页banner箭头位置
  // ban 效果 
  var next1 = 0;
  var prev2 = 0;
  var click_shu = false;
  var str="<li class='licurr'></li>"
  $(function(){
  	var li_width=$("#ban .ban_bj").width();
  	// 获取ban 滚动就是 li 的宽度
  	$('#ban .ban_bj li').not(':first').css({left:li_width});
  	// 获取 li的个数 也就是 发、滚动的次数
  	li_shu = $('#ban .ban_bj li').length;
  	for(var i=1;i<li_shu;i++){
  		str=str+"<li></li>";
  	}
  	$(".ul_dian").html(str);
  	// 自动 滚动 定时器
  	movezi = window.setInterval(function(){
  		zimove(prev2,next1);
  	},5000)
  	// 触碰 下面小图（就是触碰停止 自动滚动 离开启动 自动滚动 代码）
  	$('#ban ul.ul_dian li').hover(function(){
  			clearInterval(movezi)
  		},function(){
  		movezi = window.setInterval(function(){
  			zimove(prev2,next1);
  		},5000);
  	})/**/
  	// 触碰 banner（就是触碰停止 自动滚动 离开启动 自动滚动 代码）
  	$('.ban_bj li').hover(function(){
  			clearInterval(movezi);
  		},function(){
  		movezi = window.setInterval(function(){
  			zimove(prev2,next1);
  		},5000);
  	})
  	$('.jiantou div').hover(function(){
  			clearInterval(movezi);
  		},function(){
  		movezi = window.setInterval(function(){
  			zimove(prev2,next1);	
  		},5000);
  	})
  	$(".jiantou .jiantou_left").click(function(){
  		
  	if(next1 <=0){
  		next1 = li_shu-1;
  		prev2 = 0;
  	}else{
  		prev2 = next1;
  		next1 = next1-1;
  	}
  	moveleft(prev2,next1);	
  		
  		});
  		$("#flexslider").hover(function(){
  	$(".jiantou").css("display","inline-block");
  	},function(){
  	$(".jiantou").hide(10)
  		});
  	$(".jiantou .jiantou_right").click(function(){
  		
  	if(next1 >=(li_shu-1)){
  		next1 = 0;
  		prev2 = li_shu-1;
  	}else{
  		prev2 = next1;
  		next1 = next1+1;
  	}
  	moveright(prev2,next1);	
  		
  		});
  	// 点击 下面小图 执行的代码
  	$('#ban ul.ul_dian li').click(function(){
  		// 这个是获取 点击小图标 是第几个 返回的数 bannercurrIndex 就是 prev2
  		var bannercurrIndex = $('#ban ul.ul_dian li').index(this);

  		// 这个就是  自动滚动 代码
  		moveright(next1,bannercurrIndex);
  		// 这样 是为了  下面 执行 滚动
  		next1 = bannercurrIndex;
  	})	
  })
  //首页向   右   自动移动
  function moveright(_prev,_next){
  	li_width=$("#ban .ban_bj").width();
  	$('#ban .ban_bj li').eq(_next).addClass("on").siblings().removeClass("on");
  	$('#ban .ban_bj li').eq(_prev).stop(true,false).animate({left:-li_width},1000,function(){})
  	// 小图标 remove add  .Class
  	$('#ban ul.ul_dian li').eq(_prev).removeClass('licurr');
  	$('#ban ul.ul_dian li').eq(_next).addClass('licurr');
  	$('#ban .ban_bj li').eq(_next).css({left:li_width}).stop(true,false).animate({left:0},1000,function(){
  		click_shu = false;	
  	})
  }
  //首页向  左   自动移动
  function moveleft(_prev,_next){
  	li_width=$("#ban .ban_bj").width();
  	$('#ban .ban_bj li').eq(_next).addClass("on").siblings().removeClass("on");
  	$('#ban .ban_bj li').eq(_prev).stop(true,false).animate({left:li_width},1000,function(){})
  	$('#ban ul.ul_dian li').eq(_prev).removeClass('licurr');
  	$('#ban ul.ul_dian li').eq(_next).addClass('licurr');
  	$('#ban .ban_bj li').eq(_next).css({left:-li_width}).stop(true,false).animate({left:0},1000,function(){
  		click_shu = false;	
  	})
  } 
  // 自动移动 实际 执行代码
  function zimove(){
  	if(next1 >=(li_shu-1)){
  		next1 = 0;
  		prev2 = li_shu-1;
  	}else{
  		prev2 = next1;
  		next1 = next1+1;
  	}
  	moveright(prev2,next1);	
  }
  $(document).ready(function(e) {
  	$('.flex_comBtn').hover(function(){
  		window.clearInterval(movezi)
  	},function(){
  		movezi = window.setInterval(function(){
  			zimove(prev2,next1);
  		},5000)
  	})
  	});	
  })

    $(function () {
            var cc1 = new ScrollPic();
            cc1.scrollContId = "picList1"; // 内容容器ID,picList1加到容器上，
            cc1.arrLeftId = "LeftArr";//左箭头ID
            cc1.arrRightId = "RightArr"; //右箭头ID
            cc1.frameWidth = 1200; //显示框的宽度
            cc1.pageWidth = 1; //翻页宽度
            cc1.speed = 10; //移动速度(单位毫秒，越小越快)
            cc1.space = 10; //每次移动像素(单位px，越大越快)
            cc1.autoPlay = true; //自动播放
            cc1.autoPlayTime = 0.03; //自动播放间隔时间(秒)
            cc1.initialize(); //初始化
        });



</script>
<@global.statistics />
</body>
</html>
</#macro>
