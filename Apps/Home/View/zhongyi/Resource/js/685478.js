var system ={
win : false,
mac : false,
xll : false
};
var p = navigator.platform;
system.win = p.indexOf("Win") == 0;
system.mac = p.indexOf("Mac") == 0;
system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
if(system.win||system.mac||system.xll){
var online=new Array();
document.write("<script language=\"javascript\" src=\"http://webpresence.qq.com/getonline?Type=1&3118851077:76639324:2929124896:76614189:2338524224:2095098712:2055899285:2838660232:2793064295:\" charset=\"utf-8\" type=\"text/javascript\"></script>");
document.write("<script language=\"javascript\" src=\"http://code2.54kefu.net/kefu/url.js\" charset=\"utf-8\" type=\"text/javascript\"></script>");
document.write("<script language=\"javascript\" src=\"http://code2.54kefu.net/kefu/js/78/685478_code.js\" charset=\"utf-8\" type=\"text/javascript\"></script>");
}else{
document.write("<script language=\"javascript\" src=\"http://code2.54kefu.net/kefu/js2/78/685478.js\" charset=\"utf-8\" type=\"text/javascript\"></script>");
}
