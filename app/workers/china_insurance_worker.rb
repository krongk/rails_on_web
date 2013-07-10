#encoding: utf-8
require 'open-uri'
require 'nokogiri'

class ChinaInsuranceWorker
  include Sidekiq::Worker

  def perform
  	begin
  		@news_cate = NewsCate.find_or_create_by_name("曝光台")
  		return if @news_cate.nil?
	    puts 'foraging comments: http://www.china-insurance.com/news-center/moreItem.asp?Subname=%C6%D8%B9%E2%CC%A8'
	    list_url = "http://www.china-insurance.com/news-center/moreItem.asp?Subname=%C6%D8%B9%E2%CC%A8"
	    forage_news(list_url)
	  rescue => ex
	  	puts ex.message
	  end
  end

  def forage_news(list_url)
		page = Nokogiri::HTML(open(list_url))
		trs = page.css("body table table table table table tr")
		return if trs.empty? 
		trs.each do |tr|
		#get detail url
		return if tr.css("td a").empty?
		url = tr.css("td a")[0]['href']
		return unless url =~ /newslist.asp\?id=\d+/
		#http://www.china-insurance.com/news-center/newslist.asp?id=229065
		detail_url = ("http://www.china-insurance.com/news-center/" + url).to_s
		return if detail_url.nil?

		#check dup
		return if NewsItem.find_by_original_url(detail_url)
		detail_page = Nokogiri::HTML(open(detail_url))
		
		title = detail_page.css("td h1").inner_text
		title = detail_page.css("p.f20b").inner_text if title.blank?
		body = detail_page.css("body table table table table").inner_html
		return if title.blank? || body.blank?

		#check dup of news
		return if NewsItem.find_by_title(title)

		@news_cate.news_items.create(
			:original_url => detail_url,
			:title => title,
			:body => body,
			:meta_keywords => "#{title} 成都社保局 成都保险咨询网",
			:meta_description => title
		)
		puts "done tr: #{detail_url}"
  end
end

=begin
File.open("t.html", "w"){|f| f.write(detail_page.inner_html)}
	
=end