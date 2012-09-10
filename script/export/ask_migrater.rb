#encoding: utf-8
# == Usage
# > ruby product_migrater.rb 
# this script use to migrate local product data to common.
# steps:
# 1. check local db
#		 format contenet to wenba/product_format
# => 	 add column is_migrated to wenba_product
# 2. run product_migrater.rb 

$:.unshift(File.dirname(__FILE__))
require "rubygems"
require "local_tables"
require "common_tables"
require 'chinese_pinyin'
require "pp"

class Migrator
	def initialize
		@news_cate = ForagerCommon::NewsCate.find_or_create_by_name('买什么保险好')
	end
  
	def run
		puts 'start migrate ask...'
		count = 0
		result = ForagerLocal::AskRunKey.where(:is_migrated => 'n')
		puts "total:#{result.size}"
		result.each do |run_key|
			puts run_key.id
			begin
			  migrate(run_key)
			rescue => ex
				puts ex.message[0..200]
				run_key.is_migrated = 'f'
	      run_key.save!
			end
		end
		puts 'done...'
	end

  def migrate(run_key)
  	baidu_news_items = []
  	qihoo_news_items = []
    ForagerLocal::AskPost.where(:ask_run_key_id => run_key.id, :category => 'baidu').each do |item|
    	baidu_news_items << get_news_item(run_key, item)
    end
    ForagerLocal::AskPost.where(:ask_run_key_id => run_key.id, :category => 'qihoo').each do |item|
    	qihoo_news_items << get_news_item(run_key, item)
    end
    baidu_news_items = baidu_news_items.compact.sort{|a, b| a.body.length <=> b.body.length}
    qihoo_news_items = qihoo_news_items.compact.sort{|a, b| a.body.length <=> b.body.length}
    #generate a page
    page = ForagerCommon::Page.new
    page.title = run_key.question
    page.body = get_page_body(run_key, baidu_news_items, qihoo_news_items)
    page.path_name = Pinyin.t(run_key.question)
    page.meta_keywords = [run_key.question, '成都保险咨询网'].join(",")
    page.meta_description = baidu_news_items.flatten.compact.map{|s| s.title}.join(",")
    page.menu_match = 'ask'
    page.save!
    #generate a part
    part = ForagerCommon::Part.new
    part.title = run_key.question
    part.body = get_part_body(run_key, baidu_news_items, qihoo_news_items)
    part.save!
    #add associalition
    ForagerCommon::PagePart.create!(:page_id => page.id, :part_id => part.id)

	  run_key.is_migrated = 'y'
	  run_key.save!
  end

  def get_news_item(run_key, local_item)
  	begin
		  news_item = ForagerCommon::NewsItem.new
		  news_item.news_cate_id = @news_cate.id
		  news_item.title = local_item.title
		  news_item.meta_keywords = run_key.root unless run_key.root =~ /\d+/
		  news_item.meta_keywords = [news_item.meta_keywords, run_key.question, '成都保险咨询网'].join('_')
		  news_item.meta_description = ([news_item.meta_keywords, run_key.question, '成都保险咨询网']).join('_')
		  news_item.summary = local_item.question if local_item.category == 'baidu'
		  news_item.body = get_news_body(local_item)
		  news_item.save!
		  local_item.is_processed = 'y'
		  local_item.save!
		  return news_item
		rescue => ex
			puts ex.message[0...40]
			return nil
		end
  end

	private

	def get_page_body(run_key, baidu_news_items, qihoo_news_items)
		str_arr = ["<div class='page ask'>"]
		str_arr << "<h2>相关问答信息</h2>"
		3.times do
			item = baidu_news_items.pop
			next if item.nil?
			str_arr << %{<h3><a href="/news_items/#{item.id}" target="_blank">#{item.title}</a></h3>}
			str_arr << item.body.gsub(/<[^\u4e00-\u9fa5]+>/i, "")[0..200]
		end
		str_arr << "<h2>相关博客文章</h2>"
		3.times do
			item = qihoo_news_items.pop
			next if item.nil?
			str_arr << %{<h3><a href="/news_items/#{item.id}" target="_blank">#{item.title}</a></h3>}
			str_arr << item.body.gsub(/<[^\u4e00-\u9fa5]+>/i, "")[0..200]
		end
		str_arr << %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="webApp" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #c1161c; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; border-width: 0px; padding: 10px; margin: 0px;"  href="/search?q=#{run_key.question}" target="_blank"><span><span>获取更多关于#{run_key.question}的信息</span></span></a></li>}
		str_arr << "</div>"
		str_arr.join("\n")
	end

  def get_part_body(run_key, baidu_news_items, qihoo_news_items)
  	str_arr = ["<div class='page_part'>"]
  	str_arr << %{<ul>}
  	baidu_news_items.each do |item|
  		str_arr << %{<li><a href="/news_items/#{item.id}" target="_blank">#{item.title}</a></li>}
  	end
  	str_arr << %{</ul><ul>}
  	qihoo_news_items.each do |item|
  		str_arr << %{<li><a href="/news_items/#{item.id}" target="_blank">#{item.title}</a></li>}
  	end
  	str_arr << %{</ul><br/>}
  	str_arr << %{</div>}
  	str_arr << %{<li style="color: #636563; font-family: rooney-web; font-style: italic; margin-top: 20px; margin-right: 10px; margin-bottom: 20px; margin-left: 10px; border-style: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: baseline; display: inline-block; height: 15px; background-image: none; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; border-width: 0px; padding: 0px;"><a class="webApp" style="border-style: initial; border-color: #deded6; border-image: initial; font: inherit; vertical-align: baseline; outline-width: 0px; outline-style: initial; outline-color: initial; color: #ffffff; text-decoration: none; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #c1161c; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; -webkit-box-shadow: #999999 3px 3px 3px 2px; box-shadow: #999999 3px 3px 3px 2px; border-width: 0px; padding: 10px; margin: 0px;"  href="/search?q=#{run_key.question}" target="_blank"><span><span>获取更多关于#{run_key.question}的信息</span></span></a></li>}
  	str_arr.join("\n")
  end

  def get_news_body(local_item)
  	body = []
    case local_item.category
    when 'qihoo'
    	body << get_desc(local_item.all_answer).gsub(/\n/, "<br/>")
    when 'baidu'
    	body << %{<div class='best_answer'><span class='d_t'>回答：</span> #{get_desc(local_item.best_answer).gsub(/\n/, "<br/>")} </div>} unless local_item.best_answer.nil?
    	body << %{<div id="answer1" class="answer_d">#{get_desc(local_item.all_answer).gsub(/\n/, "<br/>")} </div>} unless local_item.all_answer.nil?
    end
    body.join("\n<hr/>")
  end

  def get_desc(desc)
		return '' if desc.blank?
    desc = desc.gsub(/\n/, "<br/>\n").gsub(/\s{2,}/, "&nbsp;&nbsp;").gsub(/\s/, '').gsub(/[^> ]+(\d+、)/, '<br/>\1').gsub(/[^> ]+(\d+(?:\)|\u3001|\uFF09))/, '<br/>\1')
		desc = desc.gsub(/[1]\d{10}/, '') #phone
		desc = desc.gsub(/QQ[ :：]*\d+/, '') #QQ
		desc = desc.gsub(/[a-z0-9_.+-]+@[a-z0-9_.+-]+/i, '') #mail
		desc
	end

	def rant_count(desc, root, title)
		desc.count root, title
	end

end

if __FILE__ == $0
  Migrator.new.run
end

