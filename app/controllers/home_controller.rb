# encoding: utf-8
#load 'forager.rb'

class HomeController < ApplicationController
  caches_page :index
  
  def index

  end

  #syixia engine
  def search
    render :text => 'yes baby!'
    return 

    if params[:q].blank?
      flash[:notice] = "请输入搜索关键词！"
      render 'form', :layout => false
      return
    end
    if params[:q] =~ /习近平/
      params[:q] = '保险'
    end
    params[:q] = '保险 ' + params[:q]
    
    @ic = Iconv.new('UTF-8//IGNORE', 'gb2312//IGNORE')
    @ic2 = Iconv.new('gb2312//IGNORE', 'UTF-8//IGNORE')
    @coder = HTMLEntities.new

    #get key word
    q = params[:q]
    q = q.squeeze(' ').strip unless q.blank?

    #get search source <web, wenda>
    t = params[:t] || 'web'
    t = ['web', 'wenda'].include?(t) ? t : 'web'

    #get page number
    @page = params[:page].to_i || 1
    @page = (1..100).include?(@page) ? @page : 1

    options = {:source => t.to_sym, :key_word => CGI.escape(@ic2.iconv(q)), :page => @page}
    # result = {:record_arr => [], :ext_key_arr => [], :source => 'web'}
    @result = Forager.get_result(options)
  
  end
  #It's a location tip, you can set lawyer => nil, and modify 'views/home/location.html.erb' to 'view/home/_location.html.erb'
  def location
  	#@ip = request.remote_id
  	@ip = '118.113.226.34'
  	@location = Rails.cache.read(@ip)
  end

  def site_map
  end

  def happy_teachers_day
    render "home/happy_teachers_day", :layout => nil
  end

  ##result = {:title => nil, :url => nil, :date => nil, :body => nil}
  def get_cdhrss
    @result = Forager.get_cdhrss
  end
end