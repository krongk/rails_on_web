<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">8.0</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects"/>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">account_input</property>
      </property>
    </element>
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">bbs_input</property>
      </property>
    </element>
  </property>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="kapow.util.net.httpclient.HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
  </property>
  <property name="privateHTTPCacheEnabled" class="Boolean">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="0"/>
    <steps class="ArrayList">
      <object class="Transition" id="1">
        <property name="name" class="String">Load Page</property>
        <property name="stateProcessor" class="LoadPage2">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="2"/>
          </property>
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
            <property name="URL" class="String">http://t.qq.com/xiaoge2479</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="3"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">0</property>
      </object>
      <object class="End" id="4">
        <property name="id" class="Integer">1</property>
      </object>
      <object class="End" id="5">
        <property name="id" class="Integer">8</property>
      </object>
      <object class="BranchPoint" id="6">
        <property name="id" class="Integer">9</property>
      </object>
      <object class="Transition" id="7">
        <property name="name" class="String">Do Nothing</property>
        <property name="stateProcessor" class="DoNothing"/>
        <property name="nodeFinderList" idref="3"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">10</property>
      </object>
      <object class="End" id="8">
        <property name="id" class="Integer">11</property>
      </object>
      <object class="BranchPoint" id="9">
        <property name="id" class="Integer">12</property>
      </object>
      <object class="Transition" id="10">
        <property name="name" class="String">Create Page</property>
        <property name="stateProcessor" class="CreatePage2">
          <property name="contents" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.MultilineValueStringExpression">
            <property name="value" class="String">&lt;html xmlns="http://www.w3.org/1999/xhtml" style=""&gt;
&lt;head&gt;
&lt;title&gt;
&lt;/title&gt;
&lt;meta http-equiv="Content-Type" content="text/html; charset=utf-8"&gt;
&lt;script language="javascript"&gt;
var g_begTime=new Date();
&lt;/script&gt;
&lt;link href="http://t.qq.com/login_0920.css" rel="stylesheet" type="text/css"&gt;
&lt;style type="text/css"&gt;
      u{text-decoration:none;white-space:nowrap;}


&lt;/style&gt;
&lt;script language="javascript"&gt;
var str_uintip = "&lt;请输入帐号&gt;";
var str_no_uin = "您还没有输入帐号！";
var str_no_pwd = "您还没有输入密码！";
var str_no_vcode = "您还没有输入验证码！";
var str_inv_uin = "请输入正确的QQ帐号！";
var str_inv_vcode = "请输入完整的验证码！";
var str_switch_qlogin = "切换到快速登录模式";
var str_switch_normal = "使用其他号码登录";
var str_qlogin_no_uin = "系统检测到您机器上QQ未启动或已被锁定。请您先登录QQ或解锁后再使用本功能。";
var str_qlogin_other_err  = "快速登录失败，请您返回重试或切换到普通登录模式。";
var str_qlogin_select_offline = "您所选择号码对应的QQ已经失效，请检查该号码对应的QQ是否已经被关闭。";
var str_qlogining = "正在登录中，请稍候……";
function $(id){return document.getElementById(id);}
var g_version=1109131030;var g_qtarget="-1";
var g_href="http://ui.ptlogin2.qq.com/cgi-bin/login_t?qlogin_jumpname=&amp;qlogin_param=u1%3Dhttp%3A%2F%2Ft.qq.com%2Fxiaoge2479&amp;link_target=blank&amp;f_url=loginerroralert&amp;hide_title_bar=1&amp;style=0&amp;target=top&amp;appid=46000101&amp;s_url=http%3A%2F%2Ft.qq.com%2Fxiaoge2479&amp;css=http://t.qq.com/login_0920.css&amp;low_login=1";var g_forget="http://ptlogin2.qq.com/ptui_forgetpwd";
var g_css = "http://t.qq.com/login_0920.css";var g_ptcss = "";
var g_jumpname = "";var g_param = "u1=http://t.qq.com/xiaoge2479";
var isLoadVC = false;
var g_appid = 46000101;
var g_uin = 0;
var g_domain = "qq.com";
var g_target = "_top";
var g_https = false;
document.domain="qq.com";
var g_t="str_uintip}";
var g_lang="2052";
function $(A){return document.getElementById(A)}var preload={needSize:"",isIpad:false,init:function(){var A=navigator.userAgent.toLowerCase();preload.isIpad=/ipad/i.test(A);preload.needSize=preload.getQuery("ptsize")},getQuery:function(B){var A=window.location.search.match(new RegExp("(?:/?|&amp;)"+B+"=([^&amp;]*)(?:&amp;|$)"));return !A?"":unescape(A[1])}};preload.init();var isAbleSubmit=false;function ptui_notifySize(D){try{obj=$(D);if(obj){width=1;height=1;if(obj.offsetWidth&gt;0){width=obj.offsetWidth}if(obj.offsetHeight&gt;0){height=obj.offsetHeight}var B=window.location.hostname.replace(/ui\.ptlogin2\./i,"");var A=new Date();A.setTime(A.getTime()+5*1000);if(preload.needSize){document.cookie="pt_size="+width+"-"+height+";domain="+B+";path=/;expires="+A.toGMTString()}if(parent.ptlogin2_onResize){parent.ptlogin2_onResize(width,height);window.scroll(0,10)}else{frameElement.width=width;frameElement.style.width=width+"px";frameElement.height=height;frameElement.style.height=height+"px";frameElement.style.visibility="hidden";frameElement.style.visibility="visible"}}}catch(C){}}var g_speedArray=new Array();var g_time={};g_time.time1=g_begTime;function ptui_setSpeed(B){if(B&lt;=0){return }var A=g_speedArray.length;g_speedArray[A]=new Array(B,new Date())}function ptui_check_qlogin(){if(!window.ActiveXObject){return 0}try{var D=new ActiveXObject("SSOAxCtrlForPTLogin.SSOForPTLogin2");var F=D.CreateTXSSOData();D.InitSSOFPTCtrl(0,F);var E=D.CreateTXSSOData();var A=D.DoOperation(2,E);var B=A.GetArray("PTALIST");var C=B.GetSize();if(C&gt;0){return C}}catch(G){return 0}return 0}var xuiFrame=false;var curXui=false;var reloadweb=false;var q_clock;function qlogin_check(){q_clock=setInterval(B,200);var A=50;document.cookie="ptui_qstatus=1;domain=ptlogin2."+g_domain+"path=/";function B(){if(A==0){switchpage()}if(document.cookie.indexOf("ptui_qstatus=2")&gt;-1){clearInterval(q_clock)}if(document.cookie.indexOf("ptui_qstatus=3")&gt;-1){clearInterval(q_clock);switchpage()}A--}}function loadxui(F){if(xuiFrame){$("qlogin").style.display="block";return }else{var B=1;if(g_jumpname!=""){if(g_qtarget!=-1){B=parseInt(g_qtarget)}}else{switch(g_target){case"_self":B=0;break;case"_top":B=1;break;case"_parent":B=2;break;default:B=1}}var E=(g_jumpname==""||g_jumpname=="jump")?encodeURIComponent("u1="+encodeURIComponent(document.forms[0].u1.value)):"";var A=(/^(https)+/g.test(window.location+"")?"https":"http")+"://xui.ptlogin2."+g_domain+"/cgi-bin/q"+g_href.substring(g_href.indexOf("/cgi-bin/")+9,g_href.indexOf("?"))+"?domain="+g_domain+"&amp;lang="+g_lang+"&amp;qtarget="+B+"&amp;jumpname="+g_jumpname+"&amp;ptcss="+g_ptcss+"&amp;param="+encodeURIComponent((g_param?encodeURIComponent(g_param):E))+"&amp;css="+g_css+"&amp;mibao_css="+preload.getQuery("mibao_css")+"#"+(g_begTime-0);var D=$("qlogin");var C=136+28*((F&gt;5?5:F)-1);D.innerHTML='&lt;iframe id="xui" name="xui" allowtransparency="true" scrolling="no" frameborder="0" width="100%" height="'+C+'" src="'+A+'"&gt;';D.style.display="block";$("web_login").style.display="none";curXui=true;xuiFrame=true;qlogin_check()}}function switchpage(){if(curXui){$("web_login").style.display="block";$("qlogin").style.display="none";$("switch").innerHTML='&lt;a style="cursor:pointer;" onclick="switchpage();"&gt;'+str_switch_qlogin+"&lt;/a&gt;";ptui_notifySize("login");if(typeof (ptui_initFocus)!="undefined"){ptui_initFocus(document.forms[0])}curXui=false;clearInterval(q_clock)}else{$("qlogin").style.display="block";$("web_login").style.display="none";$("switch").innerHTML='&lt;a style="cursor:pointer;" onclick="switchpage();"&gt;'+str_switch_normal+"&lt;/a&gt;";curXui=true;qlogin_check();ptui_notifySize("login")}$("err_m").style.display="none"}function ptui_onUserFocus(C,A){if(preload.isIpad){return }var B=$(C);if(str_uintip==B.value){B.value=""}B.style.color=A}function ptui_onUserBlue(C,A){if(preload.isIpad){return }var B=$(C);if(""==B.value){B.value=str_uintip;B.style.color=A}};
str_uintip="&lt;请输入帐号&gt;";

function loadweblogin(){
  if(typeof(ptui_setUinColor)=='undefined'){
    reloadweb = true;
    return;
  }
  ptui_setUinColor('u', '#000000', '#cccccc');

  $("loginform").verifycode.value="";
}
function onSelectLoad(){
    
  var uNum=0;
  if (document.cookie.toLowerCase().indexOf("pt_qlogincode=5")&gt;-1){uNum=0;}else{uNum = ptui_check_qlogin();}
  if (uNum &gt; 0) {
    loadxui(uNum);
    $('label_unable_tips').innerHTML = '';
    $('switch').innerHTML = '&lt;a style="cursor:pointer;" onclick="switchpage();"&gt;使用其他号码登录&lt;/a&gt;';
    $('switch').style.display = 'block';
  }else{
    loadweblogin();
    $('label_unable_tips').innerHTML = '';
    $('switch').style.display = 'none';      
  } 
  
  ptui_setSpeed(1);
  ptui_notifySize("login");  
}
function onPrePageLoad(){
  var login_form = $("loginform");
  
  $("low_login_enable").onclick=function(){ptui_notifySize("login");ptui_onEnableLLogin(login_form);}
  ptui_onEnableLLogin(login_form);
    
  $("login_button").disabled=false;
  ptui_setDefUin(login_form, "");
  ptui_setSpeed(2);  
  var reportTime4=0;try{if(location.hash){reportTime4=location.hash.substr(1,location.hash.length)};}catch(e){var f = arguments.callee;setTimeout(f, 50);}ptui_reportSpeed(g_begTime,reportTime4);g_time.time4=new Date();webLoginReport();
  ptui_notifySize("login");
  if(!curXui){ptui_initFocus(login_form);}
}
&lt;/script&gt;
&lt;/head&gt;
&lt;body onclick="B = B | window.event;
pt.action[0]++;" onkeydown="B = B | window.event;
pt.action[1]++;" style=""&gt;
&lt;div class="main" id="login" style="BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-STYLE: none; BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-STYLE: none; BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-STYLE: none; BORDER-TOP-WIDTH: 0px"&gt;
&lt;div id="qlogin" style="display:block;"&gt;
&lt;/div&gt;
&lt;div id="web_login"&gt;
&lt;form id="loginform" autocomplete="off" name="loginform" action="http://ptlogin2.qq.com/login" method="post" onsubmit="if(!isAbleSubmit){return false;};return ptui_onLoginEx(loginform, 'qq.com')" onreset="return onFormReset(loginform)" target="_self" style="margin:0px;"&gt;
&lt;ul id="g_list"&gt;
&lt;li id="err_m" class="err_m"&gt;
&lt;/li&gt;
&lt;li id="g_u"&gt;
&lt;span&gt;
&lt;u id="label_uin"&gt;&amp;#x5e10;&amp;#x3000;&amp;#x53f7;&amp;#xff1a;&lt;/u&gt;
&lt;/span&gt;
&lt;input type="text" class="inputstyle" id="u" name="u" value="&lt;请输入帐号&gt;" style="COLOR: #cccccc" tabIndex="1" onfocus="try{ptui_onUserFocus('u', '#000000')}catch(e){}" onblur="try{ptui_onUserBlue('u', '#CCCCCC');}catch(e){}check();"&gt;
&lt;label&gt;
&lt;a target="_blank" href="http://zc.qq.com/?from=pt" tabIndex="7" id="label_newreg"&gt;&amp;#x6ce8;&amp;#x518c;&amp;#x65b0;&amp;#x5e10;&amp;#x53f7;&lt;/a&gt;
&lt;/label&gt;
&lt;/li&gt;
&lt;li id="wb_tips"&gt;
&lt;span&gt;
&lt;/span&gt;
&amp;#x652f;&amp;#x6301;&amp;#x5fae;&amp;#x535a;&amp;#x5e10;&amp;#x53f7;/QQ&amp;#x53f7;/&amp;#x90ae;&amp;#x7bb1;/&amp;#x624b;&amp;#x673a;&amp;#x53f7;&amp;#x767b;&amp;#x5f55;
&lt;/li&gt;
&lt;li id="g_p"&gt;
&lt;span&gt;
&lt;u id="label_pwd"&gt;&amp;#x5bc6;&amp;#x3000;&amp;#x7801;&amp;#xff1a;&lt;/u&gt;
&lt;/span&gt;
&lt;input type="password" class="inputstyle" id="p" name="p" value="" maxLength="16" tabIndex="2" onfocus="check();"&gt;
&lt;label&gt;
&lt;a target="_blank" tabIndex="8" href="http://ptlogin2.qq.com/ptui_forgetpwd" onclick="onClickForgetPwd()" id="label_forget_pwd"&gt;&amp;#x5fd8;&amp;#x4e86;&amp;#x5bc6;&amp;#x7801;&amp;#xff1f;&lt;/a&gt;
&lt;/label&gt;
&lt;/li&gt;
&lt;li id="verifyinput" style="display:block;"&gt;
&lt;span for="code"&gt;
&lt;u id="label_vcode"&gt;&amp;#x9a8c;&amp;#x8bc1;&amp;#x7801;&amp;#xff1a;&lt;/u&gt;
&lt;/span&gt;
&lt;input name="verifycode" type="text"  id="verifycode" value="" maxLength="5" tabIndex="3"&gt;
&lt;/li&gt;
&lt;li id="verifytip" style="display:block;"&gt;
&lt;span&gt;&amp;nbsp;&lt;/span&gt;
&lt;u id="label_vcode_tip"&gt;&amp;#x8f93;&amp;#x5165;&amp;#x4e0b;&amp;#x56fe;&amp;#x4e2d;&amp;#x7684;&amp;#x5b57;&amp;#x7b26;&amp;#xff0c;&amp;#x4e0d;&amp;#x533a;&amp;#x5206;&amp;#x5927;&amp;#x5c0f;&amp;#x5199;&lt;/u&gt;
&lt;/li&gt;
&lt;li id="verifyshow" style="display:block;"&gt;
&lt;span for="pic"&gt;&amp;nbsp;&lt;/span&gt;
&lt;img id="imgVerify" width="130" height="53" onload="imgLoadReport()"&gt;
&lt;label&gt;
&lt;a id="changeimg_link" tabIndex="6" href="javascript:ptui_changeImg('qq.com', 46000101, true);"&gt;&amp;#x770b;&amp;#x4e0d;&amp;#x6e05;&amp;#xff0c;&amp;#x6362;&amp;#x4e00;&amp;#x5f20;&lt;/a&gt;
&lt;/label&gt;
&lt;/li&gt;
&lt;li title="&amp;#x4e3a;&amp;#x4e86;&amp;#x786e;&amp;#x4fdd;&amp;#x60a8;&amp;#x7684;&amp;#x4fe1;&amp;#x606f;&amp;#x5b89;&amp;#x5168;&amp;#xff0c;&amp;#x4e0d;&amp;#x5efa;&amp;#x8bae;&amp;#x5728;&amp;#x7f51;&amp;#x5427;&amp;#x7b49;&amp;#x516c;&amp;#x5171;&amp;#x73af;&amp;#x5883;&amp;#x52fe;&amp;#x9009;&amp;#x6b64;&amp;#x9879;"&gt;
&lt;span&gt;&amp;nbsp;&lt;/span&gt;
&lt;input type="checkbox" name="low_login_enable" value="1" id="low_login_enable" tabIndex="4" onclick="ptui_notifySize('login');
ptui_onEnableLLogin(login_form);" checked=""&gt;
&lt;u id="label_remember_pwd"&gt;&amp;#x4e0b;&amp;#x6b21;&amp;#x81ea;&amp;#x52a8;&amp;#x767b;&amp;#x5f55;&lt;/u&gt;
&lt;label class="low_login"&gt;
&lt;select name="low_login_hour" disabled=""&gt;
&lt;option value="24" id="label_1_day"&gt;一天&lt;/option&gt;
&lt;option value="168" id="label_1_week"&gt;一周&lt;/option&gt;
&lt;option value="720" selected="selected" id="label_1_month"&gt;一个月&lt;/option&gt;
&lt;option value="4320" id="label_half_year"&gt;半年&lt;/option&gt;
&lt;option value="8640" id="label_1_year"&gt;一年&lt;/option&gt;
&lt;/select&gt;
&lt;/label&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;div class="checkNote"&gt;&amp;#x672c;&amp;#x673a;&amp;#x4e24;&amp;#x5468;&amp;#x5185;&amp;#x6709;&amp;#x6548;&amp;#xff0c;&amp;#x8bf7;&amp;#x4e0d;&amp;#x8981;&amp;#x5728;&amp;#x7f51;&amp;#x5427;&amp;#x6216;&amp;#x516c;&amp;#x7528;&amp;#x7535;&amp;#x8111;&amp;#x4e0a;&amp;#x4f7f;&amp;#x7528;&lt;/div&gt;
&lt;div class="login_button"&gt;
&lt;input type="submit" tabIndex="5" value="登 录" class="btn" id="login_button"&gt;
&lt;a href="http://t.qq.com/reg/index.php" target="_top" style="DISPLAY: block; FONT-FAMILY: Simsun; MARGIN-BOTTOM: 0px; MARGIN-LEFT: 105px; MARGIN-RIGHT: 0px; MARGIN-TOP: -23px; TEXT-DECORATION: underline"&gt;&amp;#x5f00;&amp;#x901a;&amp;#x5fae;&amp;#x535a;&amp;gt;&amp;gt;&lt;/a&gt;
&lt;/div&gt;
&lt;div class="lineright" id="label_unable_tips"&gt;
&lt;/div&gt;
&lt;input type="hidden" name="aid" value="46000101"&gt;
&lt;input type="hidden" name="u1" value="http://t.qq.com/xiaoge2479"&gt;
&lt;input type="hidden" name="fp" value="loginerroralert"&gt;
&lt;input type="hidden" name="h" value="1"&gt;
&lt;input type="hidden" name="ptredirect" value="1"&gt;
&lt;input type="hidden" name="ptlang" value="2052"&gt;
&lt;input type="hidden" name="from_ui" value="1"&gt;
&lt;input type="hidden" name="dumy" value=""&gt;
&lt;/form&gt;
&lt;/div&gt;
&lt;div id="switch" class="lineright" style="DISPLAY: none"&gt;
&lt;a onclick=""&gt;
&lt;/a&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;script language="javascript"&gt;
var g_f=$("loginform");
if((g_appid==46000101)&amp;&amp;(g_f.u.value=="&lt;请输入帐号&gt;")){
  g_f.u.value="支持微博帐号/QQ号码/邮箱地址";
  var wb_tips=document.createElement("li");
  wb_tips.style.paddingTop="0";
  wb_tips.style.color="gray";
  wb_tips.id="wb_tips";
  wb_tips.innerHTML="&lt;span&gt; &lt;/span&gt; "+"未登录QQ或者浏览器不支持快速登录";
  $("u").value="";
  $("u").color="";
  $("g_list").insertBefore(wb_tips,$("g_p"));
}
g_time.time3=new Date();
&lt;/script&gt;
&lt;!--0--&gt;
&lt;script&gt;
onSelectLoad();
&lt;/script&gt;
&lt;script language="javascript" src="http://imgcache.qq.com/ptlogin/ac/v9/js/comm.js?v=1.2.25"&gt;
&lt;/script&gt;
&lt;script language="javascript"&gt;
function cleanCache(f){
  var t=document.createElement("iframe");
  if(f.split("#").length == 3) f = f.substring(0,f.lastIndexOf("#"));
  t.src = f;
  t.style.display = "none";
  document.body.appendChild(t);
}

if(typeof(core_md5)=="undefined"){
  cleanCache("http://imgcache.qq.com/ptlogin/ac/v9/js/../clearcache.html#http://imgcache.qq.com/ptlogin/ac/v9/js/comm.js?v=1.2.25")
  imgAttr2 = new Image();
  imgAttr2.src = "http://ui.ptlogin2.qq.com/cgi-bin/report?id=85289";
}

onPrePageLoad();
if(reloadweb){
  loadweblogin();
}
function onPageClose(){ptui_notifyClose();}
function ptuiV(v){
  if (v&gt;g_version){
    cleanCache("/clearcache.html#"+location.href);  
  }
}
function checkVersion(){
  var t = document.createElement("script");
  //t.src = "http://imgcache.qq.com/ptlogin/ac/v9/js/ver.js?r="+Math.random();
  t.src = "/cgi-bin/ver";
  document.body.appendChild(t);
}
setTimeout(checkVersion,1500);
&lt;/script&gt;
&lt;script src="/cgi-bin/ver"&gt;
&lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;
</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="language" class="String">zh_CN</property>
            <property name="overrideEncodingProvider" class="kapow.robot.plugin.common.support.encoding.provider.urlbased.AllURLBasedEncodingProvider">
              <property name="encoding" class="com.kapowtech.net.Encoding">
                <property name="encoding" class="String">UTF-8</property>
              </property>
            </property>
            <property name="overrideMimeTypeProvider" class="kapow.robot.plugin.common.support.mimetype.provider.urlbased.AllURLBasedMIMETypeProvider"/>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">overrideEncodingProvider</element>
              <element class="String" id="11">overrideMimeTypeProvider</element>
              <element class="String">language</element>
            </property>
          </property>
        </property>
        <property name="nodeFinderList" idref="3"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">13</property>
      </object>
      <object class="Transition" id="12">
        <property name="name">
          <null/>
        </property>
        <property name="stateProcessor">
          <null/>
        </property>
        <property name="nodeFinderList" idref="3"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">14</property>
      </object>
      <object class="Transition" id="13">
        <property name="name" class="String" id="14">Enter Text</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">2512501708</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" class="String" id="15">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">u</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">15</property>
      </object>
      <object class="Transition" id="16">
        <property name="name" class="String">Enter Password</property>
        <property name="stateProcessor" class="EnterPassword">
          <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.PasswordValueStringExpression">
            <property name="value" encryption-type="1" class="String">rTVjGHvOPCqDaA==</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="15"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">p</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">16</property>
      </object>
      <object class="Transition" id="17">
        <property name="name" class="String">Click 登 录</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="overrideMimeTypeProvider" class="kapow.robot.plugin.common.support.mimetype.provider.urlbased.AllURLBasedMIMETypeProvider">
              <property name="mimeType" class="com.kapowtech.net.MIMEType">
                <property name="MIMEType" class="String" id="18">text/plain</property>
                <property name="mimeType" idref="18"/>
              </property>
            </property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="11"/>
            </property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="15"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">login_btn</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">17</property>
      </object>
      <object class="Transition" id="19">
        <property name="name" idref="14"/>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">2512501708</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="15"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">u</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">18</property>
      </object>
      <object class="Transition" id="20">
        <property name="name" class="String">Set Current Window</property>
        <property name="stateProcessor" class="SetCurrentWindow">
          <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference">
            <property name="windowId" class="String">Login_Frame</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="3"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">19</property>
      </object>
      <object class="Transition" id="21">
        <property name="name" class="String">Enter Password</property>
        <property name="stateProcessor" class="EnterPassword">
          <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.PasswordValueStringExpression">
            <property name="value" encryption-type="1" class="String">rTVjGHvOPCqDaA==</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">p</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">22</property>
      </object>
      <object class="Transition" id="22">
        <property name="name" class="String">Click 登 录</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="15"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">login_button</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">23</property>
      </object>
      <object class="Transition" id="23">
        <property name="name" class="String">Enter Text</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">tpmrs</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">verifycode</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">26</property>
      </object>
      <object class="Transition" id="24">
        <property name="name" class="String">Replace Tag</property>
        <property name="stateProcessor" class="ReplaceTag">
          <property name="htmlProvider" class="kapow.robot.plugin.common.support.html.provider.StringBasedHTMLProvider">
            <property name="html" class="String">&lt;li id="verifyshow" style="display:block;"&gt;
&lt;span for="pic"&gt;&amp;nbsp;&lt;/span&gt;
&lt;img id="imgVerify" width="130" height="53" onload="imgLoadReport()"&gt;
&lt;label&gt;
&lt;a id="changeimg_link" tabIndex="6" href="javascript:ptui_changeImg('qq.com', 46000101, true);"&gt;&amp;#x770b;&amp;#x4e0d;&amp;#x6e05;&amp;#xff0c;&amp;#x6362;&amp;#x4e00;&amp;#x5f20;&lt;/a&gt;
&lt;/label&gt;
&lt;/li&gt;</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.li</property>
            </property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">verifyshow</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">28</property>
      </object>
      <object class="Transition" id="25">
        <property name="name" class="String">Replace Tag</property>
        <property name="stateProcessor" class="ReplaceTag">
          <property name="htmlProvider" class="kapow.robot.plugin.common.support.html.provider.StringBasedHTMLProvider">
            <property name="html" class="String">&lt;li id="verifyinput" style="display:block;"&gt;
&lt;span for="pic"&gt;&amp;nbsp;&lt;/span&gt;
&lt;img id="imgVerify" width="130" height="53" onload="imgLoadReport()"&gt;
&lt;label&gt;
&lt;a id="changeimg_link" tabIndex="6" href="javascript:ptui_changeImg('qq.com', 46000101, true);"&gt;&amp;#x770b;&amp;#x4e0d;&amp;#x6e05;&amp;#xff0c;&amp;#x6362;&amp;#x4e00;&amp;#x5f20;&lt;/a&gt;
&lt;/label&gt;
&lt;/li&gt;</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.li</property>
            </property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">verifyinput</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">30</property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="7"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="1"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="6"/>
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="6"/>
        <to idref="5"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="7"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="1"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="10"/>
        <to idref="13"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="13"/>
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="16"/>
        <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="17"/>
        <to idref="12"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="19"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="20"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="21"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="22"/>
        <to idref="4"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="23"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="25"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="nextTransitionId" class="Integer">32</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
