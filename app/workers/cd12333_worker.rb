#encoding: utf-8
require 'open-uri'
require 'nokogiri'

class Cd12333Worker
  include Sidekiq::Worker

  def perform
  	flag = false
  	begin
  		@news_cate = NewsCate.find(80)

  		return if @news_cate.nil?
	    puts 'foraging 12333 comments: http://www.cdhrss.gov.cn/1233/mail_more.jsp'
	    list_url = "http://www.cdhrss.gov.cn/1233/mail_more.jsp"
	    page = Nokogiri::HTML(open(list_url))
	    trs = page.css("div.rightside1").css("table tr")
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
	    	table = detail_page.css("div.right10 table")
	    	next if table.empty?
	    	title = table.css("tr")[0].css("td")[-1].inner_text
	    	next if title.nil?
	    	desc = table.inner_text.gsub(/\s+/, ",")
	    	
	    	@news_cate.news_items.create(
	    		:original_url => detail_url,
	    		:title => title,
	    		:body => %{<table border="1">#{table.inner_html.gsub(/(\/1233\/writeEmail.jsp)/, '/contacts/new').gsub(/\/images\/rbtn02.jpg/, '/assets/pic9.gif')}</table>},
	    		:meta_keywords => "#{title} 成都社保局 成都保险咨询网",
	    		:meta_description => desc
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