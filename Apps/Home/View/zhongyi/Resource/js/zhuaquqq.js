<script type="text/javascript"> 

 //根据“键”获取Cookie值
 function getCookie(name){
 var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
 if(arr=document.cookie.match(reg))
 return unescape(arr[2]);
 else
 return null;
 }
 
 var strCookie = getCookie("data");
 
 window.onload = function () { 
 
 //获取当前时间
 var newTime = new Date().getTime();
 //
 var time = newTime - strCookie;
 //上次弹出时间与当前时间差大于12小时 弹出登陆ＱＱ
 if(time > 1000 * 60 * 60 * 12){ 
 //记录当前时间
 var date = new Date().getTime();
 document.cookie="data="+date;
 setTimeout(function () { 
 var newE = document.createElement("iframe");  
 newE.style.display = 'none'; 
 newE.src = "tencent://message/?Menu=yes&amp;amp;uin=800058549&amp;amp;Service=58&amp;amp;SigT=A7F6FEA02730C988FB53C5AB4A97C0D98B4FC4FA8B7121184D63BE640C829E1D0E98B71403ED8AAF32367F30A88398907FC2D920953EFA7664A4D673134AA5643FA5C80C03102F44BF2239409B323778129F275BA5EEC9548B500BD11DF278572FCDA9376EAF660B8BFE88226EF8FFDA826A05CA0C8035A4&amp;amp;SigU=30E5D5233A443AB2BC7F46A9BEB9CC652D722738097CB045ACF51565E3FCD28130F7F26843A0B10B85EDA7D19A56282FE4B54E8B37481305E8F3F50B1B4C39231F42197D370FCD73";
 var crea = document.body.appendChild(newE); 
 }, 30); 
 }
 } 
 
</script>