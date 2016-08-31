<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>诺信网站管理系统 V2.0</title>
   <script type="text/javascript" src="/Public/static/js/jquery.min.js"></script>
   <script type="text/javascript" src="/Public/static/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="/Public/static/css/main.css" />
   <link rel="stylesheet" type="text/css" href="/Public/static/css/bootstrap.min.css" />
</head>
<body>

<div>
    <script type="text/javascript" charset="utf-8" src="/Public/static/plus/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Public/static/plus/ueditor/ueditor.all.js"> </script>
    <script type="text/javascript" charset="utf-8" src="/Public/static/plus/ueditor/lang/zh-cn/zh-cn.js"> </script>

    <form class="form-horizontal" role="form" method='post' action='/admin.php/Article/insert' enctype='multipart/form-data'>
    <input type="hidden" name='type' value='add'>

    <div class="col-sm-12">
            <div class="col-sm-10">
                <h1>添加文章</h1><hr>
            </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-5">
            <div class="form-group">
              <label for="title" class="col-sm-2 control-label">标题:</label>
              <div class="col-sm-6">
                 <input type="text" class="form-control" name="title" 
                    placeholder="请输入文章标题">
              </div>
           </div>
        </div>
    </div>

     <div class="col-sm-12">

        <div class="col-sm-5">
            <div class="form-group">
              <label for="pid" class="col-sm-2 control-label">栏目:</label>
              <div class="col-sm-6">
                 <select name="pid" class='form-control'>
                    <option value="0">|--根目录--</option>
                    <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option class="opt_<?php echo ($list["id"]); ?>" value="<?php echo ($list["id"]); ?>">|-<?php echo ($list["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                 </select>
              </div>
           </div>
        </div>
    </div>

    <script>
        $(".opt_<?php echo (session('article_column_pid')); ?>").attr("selected",true);
    </script>

     <div class="col-sm-12">

        <div class="col-sm-5">
            <div class="form-group">
              <label for="author" class="col-sm-2 control-label">作者:</label>
              <div class="col-sm-6">
                 <input type="text" class="form-control" name="author" 
                    placeholder="请输入文章作者">
              </div>
           </div>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-10">
            <div class="form-group">
              <label for="thumbpic" class="col-sm-1 control-label">缩略图:</label>
              <div class="col-sm-3">
                 <input type="text" class="form-control" name="thumbpic"   
                    placeholder="输入网络地址">
              </div>

              <div class="col-sm-3">
                 <input type="file"  class="form-control" name="uppic" >
              </div>
           </div>
        </div>
    </div>    

    <div class="col-sm-12">
        <div class="col-sm-10">
            <div class="form-group">
              <label for="summary" class="col-sm-1 control-label">简介:</label>
              <div class="col-sm-8">
                 <textarea  rows='3' class="form-control" name="summary"  
                    placeholder="输入文章简介"></textarea>
              </div>
           </div>
        </div>
    </div>


    <div class="col-sm-12">
        <div class="col-sm-10">
            <script id="editor" type="text/plain" style="width:100%;height:320px;"></script>
        </div>

    </div>

</div>

<div class="col-sm-12">
    <div class="col-sm-8">
        <br>
        <button class='btn btn-primary'>提交</button>
		<a class='btn btn-primary' onclick='clearLocalData()'>清空草稿箱</a>
	</div>
</form>
	<div class="col-sm-4"></div>
</div>

<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }

      function getFirstImg(){
        alert(1);
    }


</script>
</body>
</html>