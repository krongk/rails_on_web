#encoding: utf-8
require 'open-uri'
require 'nokogiri'

class SinaNewsWorker
  include Sidekiq::Worker

  def perform
  	flag = false
  	begin
  		@news_cate = NewsCate.find_by_en_name("xing-ye-zi-xun")
  		@news_cate ||= NewsCate.find(1)
 
	    puts 'foraging : http://roll.finance.sina.com.cn/finance/bx3/bxxw_xydt/index.shtml'
	    list_url = "http://roll.finance.sina.com.cn/finance/bx3/bxxw_xydt/index.shtml"
	    page = Nokogiri::HTML(open(list_url))
	    trs = page.css("div.listBlk").css("ul li")
	    return if trs.empty? 
	    trs.each do |tr|
	    	#get detail url
	    	next if tr.css("a").empty?
	    	detail_url = tr.css("a")[0]['href']
	    	next if detail_url.nil?

	    	#check dup
	    	return if NewsItem.find_by_original_url(detail_url)
	    	detail_page = Nokogiri::HTML(open(detail_url))

	    	title = detail_page.css("#artibodyTitle").inner_text
	    	body  = detail_page.css("#artibody").inner_text
	    	
	    	next if title.nil? || body.nil?
	    	
	    	@news_cate.news_items.create(
	    		:original_url => detail_url,
	    		:title => title,
	    		:body => body,
	    		:meta_keywords => "#{title}-保险新闻",
	    		:meta_description => "#{title}, 保险新闻, 成都保险，保险行业"
	    	)
	    	flag = true
	    	puts "done tr: #{detail_url}"
	    end
	  rescue => ex
	  	puts ex.message
	  end
  end
end