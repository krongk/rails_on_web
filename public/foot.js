
//线咨询 start
lastScrollY=0;
function heartBeat(){ 
var diffY;
if (document.documentElement && document.documentElement.scrollTop)
    diffY = document.documentElement.scrollTop;
else if (document.body)
    diffY = document.body.scrollTop
else
    {}
//alert(diffY);
percent=.1*(diffY-lastScrollY); 
if(percent>0)percent=Math.ceil(percent); 
else percent=Math.floor(percent); 
document.getElementById("lovexin12").style.top=parseInt(document.getElementById("lovexin12").style.top)+percent+"px";

lastScrollY=lastScrollY+percent; 
//alert(lastScrollY);
}
suspendcode12="<DIV id=\"lovexin12\" style='left:22px;POSITION:absolute;TOP:100px;z-index:100'>";

var recontent='<p><span style="color:blue; font-weight:600;">==在线咨询==</span><br>'
 + '<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=29928649&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:29928649:41" alt="成都保险咨询网" title="成都保险咨询网"></a><br>'
 + '<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2576455908&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2576455908:41" alt="www.baoxian028.com" title="www.baoxian028.com"></a><br>'  
 + '<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2586308980&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2586308980:41" alt="www.baoxian028.com" title="www.baoxian028.com"></a><br>'  
 + '<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2506875289&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2506875289:41" alt="www.baoxian028.com" title="www.baoxian028.com"></a><br>'  
 + '<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2512501708&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2512501708:41" alt="www.baoxian028.com" title="www.baoxian028.com"></a><br>'  

document.write(content); ;

document.write(suspendcode12); 
document.write(recontent); 
document.write("</div>"); 
window.setInterval("heartBeat()",1);

function far_close()
{
	document.getElementById("lovexin12").innerHTML="";
}

function setfrme()
{
	var tr=document.getElementById("lovexin12");
	var twidth=tr.clientWidth;
	var theight=tr.clientHeight;
	var fr=document.getElementById("frame55la");
	fr.width=twidth-1;
	fr.height=theight-30;
}
//在线咨询 end

//google counter start
 var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-10508960-6']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
//google counter end


//IE img hack
//resize callme.png on IE 6
//  if(navigator.userAgent.indexOf("MSIE")>0) { 
//   var sad = document.getElementsByTagName("img");
//   var callme =  /(bannerx|baojianhui|90zn)/;
//   for(var i = 0; i < sad.length; i++){
//     if (callme.test(sad[i].src)){
//       sad[i].width = 220;
     
//     }
//   }
// }