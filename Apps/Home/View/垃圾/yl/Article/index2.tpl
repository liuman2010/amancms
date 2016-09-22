<{include file='public/head.tpl'}>
<div class="w100">
<div class="wrap">
<div class="ny_title">
<!-- 视频列表 -->
<font>您的当前位置：<{ section name=loc loop=$locs  }> <a href="/">网站首页</a> > <a href="<{$url}>/index/pid/<{ $locs[loc].id }>" title="<{ $locs[loc].description }>"><{ $locs[loc].title }></a> 
        <{ /section }></font>
</div>
<div class="ny_body">
<div id="photolistcon">

<div class="cell">
<ul class="subm">

{dede:arclist row=1 typeid=12 orderby=rand titlelen=14}
<li><h2><a href="[field:arcurl/]"  >[field:title/]</a></h2></li>
{/dede:arclist}
<li>
{dede:arclist row=6 typeid=12 orderby=rand titlelen=14}<!-- 
<h2><a href="[field:arcurl/]">[field:title/]</a></h2> --><a href="[field:arcurl/]" class="tag "  >[field:title/]</a>
{/dede:arclist}
</li>


{dede:arclist row=1 typeid=13 orderby=rand titlelen=14}
<li><h2><a href="[field:arcurl/]"  >[field:title/]</a></h2></li>
{/dede:arclist}
<li>
{dede:arclist row=6 typeid=13 orderby=rand titlelen=14}<!-- 
<h2><a href="[field:arcurl/]">[field:title/]</a></h2> --><a href="[field:arcurl/]" class="tag "  >[field:title/]</a>
{/dede:arclist}
</li>



{dede:arclist row=1 typeid=14 orderby=rand titlelen=14}
<li><h2><a href="[field:arcurl/]"  >[field:title/]</a></h2></li>
{/dede:arclist}
<li>
{dede:arclist row=6 typeid=14 orderby=rand titlelen=14}<!-- 
<h2><a href="[field:arcurl/]">[field:title/]</a></h2> --><a href="[field:arcurl/]" class="tag "  >[field:title/]</a>
{/dede:arclist}
</li>



{dede:arclist row=1 typeid=15 orderby=rand titlelen=14}
<li><h2><a href="[field:arcurl/]"  >[field:title/]</a></h2></li>
{/dede:arclist}
<li>
{dede:arclist row=6 typeid=15 orderby=rand titlelen=14}<!-- 
<h2><a href="[field:arcurl/]">[field:title/]</a></h2> --><a href="[field:arcurl/]" class="tag "  >[field:title/]</a>
{/dede:arclist}
</li>


<li><p>联系我们</p><p><font style="color:blue;font-size:20px;">电话：</font><font style="color:red;font-size:19px;"> 020-29830628</font></p><p><font style="color:blue;font-size:20px;">官小姐：</font><font style="color:red;font-size:19px;">18124267558</font></p></li>

</ul>
</div>
<div class="pic_con">
{dede:list pagesize='9'}

<div class="cell">
    <a href="[field:arcurl/]" class="pii" target="_blank">[field:image/]<b>[field:title/]</b></a>
    <!-- <span class="titl"><a href="[field:arcurl/]" target="_blank">[field:description function='cn_substr("@me",78)'/]..</a></span>
    <p class="deo"></p> -->
</div>
{/dede:list}
 
</div>
<div class="dede_pages">
   <ul class="pagelist">
    {dede:pagelist listitem="info,index,end,pre,next,pageno,option" listsize="10"/}
   </ul>
  </div>


<!--底部信息-->
<!-- <div class="w100"> -->
<{include file='public/footer.tpl'}>
<!-- </div>
<script language="javascript" src="{dede:global.cfg_templets_skin/}/js/jquery.lazyload.min.js"></script>
<script language="javascript" src="{dede:global.cfg_templets_skin/}/js/common.js"></script>
<script language="javascript">
$(function(){
$("img.lazy").lazyload({effect:"fadeIn"});
st();
window.onscroll=st;
$(".loginin span").hover(function(){
$(this).find("ul:first").show();//鼠标滑过查找li下面的第一个ul然后显示；
$(this).find(".pmh").hide();
},function(){
$(this).find("ul:first").hide();//鼠标离开隐藏li下面d的ul；
$(this).find(".pmh").show();
});
})
</script>
<script language="javascript" src="{dede:global.cfg_templets_skin/}/js/scrolltopcontrol.js"></script>
<link rel="stylesheet" href="{dede:global.cfg_templets_skin/}/style/style.css" type="text/css"/>
<script type="text/javascript" src='{dede:global.cfg_templets_skin/}/js/jquery.ThinkBox.min.js' ></script>
<script language="javascript">
$(document).ready(function(){
$('#loginbox').click(function(){
$.ThinkBox.load('/User/login.shtml', {'title' : '用户登录'});
});
$('#searchbutton').click(function(){
  var searchwords = $('#searcharea').val();
  searchwords = searchwords.trim();
  if(searchwords == '搜你想要的内容......' || searchwords.length<1){
    return false;
  }
})
});
</script>
<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=tools&mini=1&uid=0" ></script>
<script type="text/javascript" id="bdshell_js"></script>

<!-- Baidu Button END -->
<!-- JiaThis Button BEGIN -->
<script type="text/javascript" src="http://v3.jiathis.com/code/jiathis_r.js?uid=1362530798566935&type=left&move=0&btn=l4.gif" charset="utf-8"></script>
<!-- JiaThis Button END -->


<div class="w100" style="text-align: center;">

</div>
<!-- <SCRIPT LANGUAGE="JavaScript" src=http://float2006.tq.cn/floatcard?adminid=8538173&sort=0 ></SCRIPT> -->
<script language="javascript" src="{dede:global.cfg_templets_skin/}/js/jquery.masonry.min.js"></script>
<script language="javascript" src="{dede:global.cfg_templets_skin/}/js/jquery.infinitescroll.min.js"></script>
<SCRIPT>
$(document).ready(function(){

   showhide(".cellshare","ul:first");
  var sm=$(".slishow_pro span a").length;
  var sw = 0;
  $(".slishow_pro span a").mouseover(function(){
    sw = $(".slishow_pro span a").index(this);
    myShow(sw);
  });
function myShow(i){
  $(".slishow_pro span a").eq(i).addClass("cu").siblings("a").removeClass("cu");
  $(".slishow_pro ul li").eq(i).stop(true,true).fadeIn(300).siblings("li").fadeOut(300);
}
//滑入停止动画，滑出开始动画
$(".slishow_pro").hover(function(){
if(myTime){
clearInterval(myTime);
}
},function(){
myTime = setInterval(function(){
myShow(sw)
sw++;
if(sw==sm){sw=0;}
} , 3000);
});
//自动开始
var myTime = setInterval(function(){
myShow(sw)
sw++;
if(sw==sm){sw=0;}
} , 3000);
var p = parseInt(1);
var sp = 2;
var wallpage = parseInt(8);
var url = '/Photo/walllist.shtml?sp='+sp+'&p='+p+'&cid='+cid;
$('#page-nav a').attr('href','/Photo/walllist.shtml?sp='+sp+'&p='+p+'&cid='+cid);
var $container = $('#photolistcon');
$container.imagesLoaded(function(){
  $container.masonry({
    itemSelector: '.cell',
    columnWidth: 0,
  gutterWidth:0,//列的间隙
    //isFitWidth:true,//自适应宽度
    isResizableL:true,// 是否可调整大小
    isRTL:false//使用从右到左的布局
  });
$container.infinitescroll({
  navSelector  : '#page-nav',    // selector for the paged navigation
  nextSelector : '#page-nav a',  // selector for the NEXT link (to page 2)
  itemSelector : '.cell',     // selector for all items you'll retrieve
  dataType     : 'html',
  donetext     : "..." ,
  pixelsFromNavToBottom:300,
  debug:false,
  loading: {
    speed: 'fast',
    msgText: "Loading....",
      finishedMsg: '',
      finished: function(){sp++; if(sp>wallpage){$("#infscr-loading").hide();$(window).unbind('.infscr');}},
      errorCallback:function(){ $(".pagenum").show(); }}}, function( newElements ) {var $newElems = $( newElements ).css({ opacity: 0 }); $container.infinitescroll('pause');$newElems.imagesLoaded(function(){ $newElems.animate({ opacity: 1 }); $container.masonry( 'appended', $newElems, true );$container.infinitescroll('resume');
      baidushareJS();
      showhide(".cellshare","ul:first");
    });
  }
);
});
  });

</SCRIPT>
</BODY>
</HTML> -->