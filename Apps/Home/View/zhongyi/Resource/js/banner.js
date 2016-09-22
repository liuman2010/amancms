/**
 * Created by Administrator on 14-5-25.
 */

window.onload=function imgbox(wra,tab,con){
    var oDiv=document.getElementById("middle");
    var aBtn=oDiv.getElementsByTagName('li');
    var aDiv=oDiv.getElementsByTagName('div');
    var i=0;
    var iNow=0;
    var timer=null;
	aBtn[0].className="active";
    function move(){
        for(i=0;i<aBtn.length;i++){
            aDiv[i].style.display='none';
            aBtn[i].className='';
            //clearInterval(timer2);
           // al=0;
        }
        aBtn[iNow].className='active';
        aDiv[iNow].style.display='block';
       // timer2=setInterval(dr,10)
    }

    for (i=0;i<aBtn.length;i++){
        aBtn[i].index=i;
        aBtn[i].onclick=function (){
            iNow=this.index;
            move();
        }
    }

    timer=setInterval(function(){
        iNow++;
        if(iNow>=aBtn.length){
            iNow=0;
        }
        move();
    },3000)
    oDiv.onmouseover=function(){
        clearInterval(timer);
    }
    oDiv.onmouseout=function(){
        timer=setInterval(function(){
            iNow++;
            if(iNow>=aBtn.length){
                iNow=0;
            }
            move();
        },3000)
    }
}
