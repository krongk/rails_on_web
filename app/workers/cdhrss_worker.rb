#encoding: utf-8
require 'open-uri'
require 'nokogiri'

class CdhrssWorker
  include Sidekiq::Worker

  def perform
  	flag = false
  	begin
  		@news_cate = NewsCate.find_by_en_name("cdhrss")
  		@news_cate ||= NewsCate.find(1)
 
	    puts 'foraging : http://www.cdhrss.gov.cn/openALLCommonPage.jsp'
	    list_url = "http://www.cdhrss.gov.cn/openALLCommonPage.jsp"
	    page = Nokogiri::HTML(open(list_url))
	    trs = page.css("div.right10").css("table tr")
	    return if trs.empty? 
	    trs.each do |tr|
	    	#get detail url
	    	next if tr.css("td a").empty?
	    	url = tr.css("td a")[0]['href']
	    	detail_url = (URI.parse(list_url) + url).to_s
	    	next if detail_url.nil?

	    	#check dup
	    	return if NewsItem.find_by_original_url(detail_url)
	    	detail_page = Nokogiri::HTML(open(detail_url))

	    	title = detail_page.css("td.hongse22")[0].inner_text
	    	body  = detail_page.css("div[@class='detail'] table[2] table").css("table").css("table")[2].inner_text
	    	
	    	next if title.nil? || body.nil?
	    	
	    	@news_cate.news_items.create(
	    		:original_url => detail_url,
	    		:title => title,
	    		:body => body,
	    		:meta_keywords => "#{title} 成都社保局 成都保险咨询网",
	    		:meta_description => title
	    	)
	    	flag = true
	    	puts "done tr: #{detail_url}"
	    end
	  rescue => ex
	  	puts ex.message
	  end
	  if flag #expire cache pages
	  	FileUtils.rm_rf "#{Rails.root}/public/news_cates/#{@news_cate.id}.html"
	  	FileUtils.rm_rf "#{Rails.root}/public/news_cates/#{@news_cate.en_name}.html"
	  end
  end
end