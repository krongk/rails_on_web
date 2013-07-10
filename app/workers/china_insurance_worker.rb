#encoding: utf-8
require 'open-uri'
require 'nokogiri'

class ChinaInsuranceWorker
  include Sidekiq::Worker
  NEWS_LIST = {
		"moreItem.asp?Subname=%D0%D0%D2%B5%D7%CA%D1%B6" => "行业资讯",
		"moreItem.asp?Subname=%C6%F3%D2%B5%D7%CA%D1%B6" => "保险资讯",
		"moreItem.asp?Subname=%BC%E0%B9%DC%B6%AF%CC%AC" => "行业资讯",
		"moreItem.asp?Subname=%BA%A3%CD%E2%B6%AF%CC%AC" => "行业资讯",
		"moreItem.asp?Subname=%B1%A3%CF%D5%C6%C0%CA%F6" => "保险资讯",
		"moreItem.asp?Subname=%B2%C6%BE%AD%D0%C2%CE%C5" => "行业资讯",
		"moreItem.asp?Subname=%BB%F9%B2%E3%D0%C5%CF%A2" => "行业资讯",
		"moreItem.asp?Subname=%B1%A3%CF%D5%CA%FD%BE%DD" => "中国保险数据库",
		"moreItem.asp?Subname=%BE%DB%BD%B9%B0%D9%D0%D5" => "行业资讯",
		"moreItem.asp?Subname=%C6%D8%B9%E2%CC%A8"       => "曝光台",
		"moreItem.asp?Subname=%B1%A3%CF%D5%B9%C9"       => "保险理财",
		"moreItem.asp?Subname=%B1%A3%CF%D5%C0%ED%B2%C6" => "保险理财",
		"moreItem.asp?Subname=%C8%CB%CE%EF%CC%D8%D0%B4" => "保险文章",
		"moreItem.asp?Subname=%B2%FA%C6%B7%CB%D9%B5%DD" => "保险产品",
		"moreItem.asp?Subname=%D6%D0%BD%E9%D4%B0%B5%D8" => "营销与管理",
		"moreItem.asp?Subname=%B7%A8%B9%E6%D7%CA%D1%B6" => "保险资讯",
		"moreItem.asp?Subname=%B3%B5%CF%D5%D7%CA%D1%B6" => "车险",
  }
  def perform
  	begin
  		NEWS_LIST.each_pair do |k, v|
  			list_url = "http://www.china-insurance.com/news-center/" + k
  			puts 'foraging comments: ' + list_url
	  		news_cate = NewsCate.find_or_create_by_name(v)
	  		return if news_cate.nil?
		    
		    forage_news(news_cate, list_url)
		  end
	  rescue => ex
	  	puts ex.message
	  end
  end

  def forage_news(news_cate, list_url)
		page = Nokogiri::HTML(open(list_url))
		trs = page.css("body table table table table table tr")
		return if trs.empty?
		trs.each do |tr|
			#get detail url
			next if tr.css("td a").empty?
			url = tr.css("td a")[0]['href']
			next unless url =~ /newslist.asp\?id=\d+/
			#http://www.china-insurance.com/news-center/newslist.asp?id=229065
			detail_url = ("http://www.china-insurance.com/news-center/" + url).to_s
			next if detail_url.nil?

			#check dup
			next if NewsItem.find_by_original_url(detail_url)
			detail_page = Nokogiri::HTML(open(detail_url))
			
			title = detail_page.css("td h1").inner_text
			title = detail_page.css("p.f20b").inner_text if title.blank?
			body  = detail_page.css("td[height='670']").inner_html
			next if title.blank? || body.blank?

			#check dup of news
			next if NewsItem.find_by_title(title)

			NewsItem.create(
				:news_cate_id => news_cate.id,
				:original_url => detail_url,
				:is_foraged => 'y',
				:title => title,
				:body => body.gsub(/\n+/, "\n"),
				:meta_keywords => "#{title} --成都保险咨询网",
				:meta_description => title
			)
			puts "done tr: #{detail_url}"
		end
  end
end

=begin
File.open("t.html", "w"){|f| f.write(body)}
	
=end