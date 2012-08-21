#encoding: utf-8
module ApplicationHelper
  
  def is_ie?
    request.env["HTTP_USER_AGENT"] =~ /MSIE.*6.*Windows NT/i
  end

  def title(page_title)
  	content_for(:title){ page_title}
  end
  def meta_keywords(meta_keywords)
  	content_for(:meta_keywords){ meta_keywords}
  end
  def meta_description(meta_description)
  	content_for(:meta_description){ meta_description}
  end
  
  def cate_banner(cate)
    img = ['baoxian028-pinpai.jpg', 'baoxian028-che.jpg', 'baoxian028-che2.jpg', 'baoxian028-green_sky.jpg', 
      'baoxian028-up_with_you.jpg', 'b-che.jpg', 'bg-1.jpg', 'b-family.jpg', 'b-job.jpg', 'b-kids.jpg', 'b-kids2.jpg', 'job_banner.jpg'][rand(12)]
    return %{<a href="/tuan/index.html" target="_blank"><img src="/assets/#{img}" width="660px"/></a>}.html_safe
  end
  #链接菜单导航，如：首页/关于我们
  #input: nav_bar [['首页', '/'], ['关于', '/about']]
  def nav_bar(bar_arr)
    strs = ['<div id="nav_bar">']
    bar_arr.each do |nav|
      strs << link_to(nav[0], nav[1], :class=> 'nav_bar_link')
      strs << " / "
    end
    strs << "</div>"
    content_for(:nav_bar){
      strs.join.html_safe
    }
  end

  #flash动画显示
  # eg: play_flash("flash/top_banner.swf")
  # or: play_flash asset_path("flash/top_banner.swf"), :width => '985', :height => '249'
  def play_flash(src, options = {:width=>'600', :height=>'400'})
    str = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' width='"+ options[:width] +"' height='"+ options[:height] +"' id='FlashID' accesskey='1' tabindex='1' title='omero'>
        <param name='movie' value='" + src + "' />
        <param name='quality' value='high' />
        <param name='wmode' value='transparent' />
        <param name='swfversion' value='9.0.45.0' />
        <param name='expressinstall' value='" + asset_path('Scripts/expressInstall.swf') + "' />
        <!--[if !IE]>-->
        <object type='application/x-shockwave-flash' data='" + src + "' width='"+  options[:width] +"' height='"+  options[:height] +"'>
          <!--<![endif]-->
          <param name='movie' value='" + src + "' />
          <param name='quality' value='high' />
          <param name='wmode' value='transparent' />
          <param name='swfversion' value='9.0.45.0' />
          <param name='expressinstall' value='"+ asset_path('Scripts/expressInstall.swf') + "' />
          <div>
            <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
            <p><a href='http://www.adobe.com/go/getflashplayer'><img src='http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif' alt='获取 Adobe Flash Player' width='112' height='33' /></a></p>
          </div>
          <!--[if !IE]>-->
        </object>
        <!--<![endif]-->
      </object>"
    return str.html_safe
  end

  #计算标签的权重,wet => tag.weight, level => class总数
  def weight(wet, level)
    wet = wet.to_i if wet
    return 1 if wet.nil?
    level = level.to_i if level
    return 1 if level.nil?
    return wet/(1000/level)
  end

  #displiat tags style
  def page_tag_li(item)
    case rand(6)
    when 0
      %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="webApp" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #c1161c; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; border-width: 0px; padding: 10px; margin: 0px;"  href="#{page_path(item)}" target="_blank"><span><span>#{item.title}</span></span></a></li>}.html_safe
    when 1
      %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="facebook" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #3b5998; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; border-width: 0px; padding: 10px; margin: 0px;"  href="#{page_path(item)}" target="_blank"><span><span>#{item.title}</span></span></a></li>}.html_safe
    when 2
      %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="crowdFunding" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #92cb56; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; border-width: 0px; padding: 10px; margin: 0px;"  href="#{page_path(item)}" target="_blank"><span><span>#{item.title}</span></span></a></li>}.html_safe
    when 3
      %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="ecommerce" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #168aba; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; border-width: 0px; padding: 10px; margin: 0px;"  href="#{page_path(item)}" target="_blank"><span><span>#{item.title}</span></span></a></li>}.html_safe
    when 4
      %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="rorConsulting" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #f58220; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; border-width: 0px; padding: 10px; margin: 0px;"  href="#{page_path(item)}" target="_blank"><span><span>#{item.title}</span></span></a></li>}.html_safe
    else
      %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="hireRor" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: none; background-attachment: scroll; background-origin: initial; background-clip: initial; background-color: #292929; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; background-position: 0px 0px; background-repeat: repeat repeat; border-width: 0px; padding: 10px; margin: 0px;" href="#{page_path(item)}" target="_blank"><span><span>#{item.title}</span></span></a></li>}.html_safe
    end
  end
  #
  def show_hot_gif
    case rand(8)
    when 0
      %{#{image_tag '/assets/ico/0.gif'}}.html_safe
    when 1
       %{#{image_tag '/assets/ico/1.gif'}}.html_safe
    when 2
       %{#{image_tag '/assets/ico/2.gif'}}.html_safe
    else
      ''
    end
  end
end
