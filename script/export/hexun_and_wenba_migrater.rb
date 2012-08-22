#encoding: utf-8
# == Usage
# > ruby migrate_data.rb 
# this script use to migrate local data to common.
# steps:
# 1. check local db
#		 format contenet to huxun/wenba_post_format
# => 	 add column is_migrated to xx_post_format
# 2. run migrater.rb 

$:.unshift(File.dirname(__FILE__))
require "rubygems"
require "local_tables"
require "common_tables"
require "pp"

class Migrator
	def initialize
	end
  
	def migrate(mod, l_post)
	  #begin
	  	if ForagerCommon::NewsItem.find_by_original_url(l_post.url)
	  		mod.update(l_post.id, :is_migrated => 'd')
	  		print 'dup '
	  		return
	  	end

			c_category              = ForagerCommon::NewsCate.find_or_create_by_name(l_post.category)
			c_post                  = ForagerCommon::NewsItem.new
			c_post.news_cate_id     = c_category.id
			c_post.title            = l_post.title
			c_post.original_url     = l_post.url
			c_post.meta_keywords    = "#{l_post.category}, #{l_post.title}, 成都保险咨询网，www.baoxian028.com"
			c_post.meta_description = "#{l_post.category}, #{l_post.title}, 成都保险咨询网(www.baoxian028.com)提供专业的商业保险理财咨询服务!"

			c_post.body  = l_post.respond_to?(:content) ? l_post.content : %{<div class='best_answer'><span class='d_t'>回答：</span>#{l_post.best_answer.to_s.gsub(/\n{2,}/, '<br>').gsub(/\n/, '<br>')}</div>\n#{l_post.formated_all_answer.to_s.gsub(/<div id='answer(\d+)' class='answer_d'>/, '<div id="answer\1" class="answer_d"><span class="d_t">\1</span>')}}

			c_post.summary = l_post.respond_to?(:question) ? l_post.question.to_s.gsub(/\n{2,}/, '<br>').gsub(/\n/, '<br>') : nil
			c_post.save!

			mod.update(l_post.id, :is_migrated => 'y')
			print l_post.id
			print ' '
	  # rescue => ex
		 #  puts ex.message
   #    mod.update(l_post.id, :is_migrated => 'f')
	  # end
	end

	def run
		puts 'start post...'
		count = 0
		['WenbaPostFormat', 'HexunPostFormat'].each do |klass|
			mod = eval "ForagerLocal::#{klass}"
			loop  do
				result = mod.where(:is_migrated => 'n').limit(500)
				puts count += result.size
				break if result.size == 0
			  result.each do |l_post|
				  migrate(mod, l_post)	
			  end
		  end
		end
		puts 'done...'
	end
end

if __FILE__ == $0
  Migrator.new.run
end