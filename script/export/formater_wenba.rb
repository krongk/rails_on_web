#encoding: utf-8
# == Usage
# > format data from wenba_post to wenba_post_format

$:.unshift(File.dirname(__FILE__))
require "rubygems"
require "local_tables"

class Formater
	def initialize
	end
  
	def format(l_post)
	  begin
		f_post = ForagerLocal::WenbaPostFormat.new
		cate = ForagerLocal::WenbaRunKey.find(l_post.wenba_run_key_id)
		puts cate
		
		f_post.category = cate.category
		f_post.title = get_title(l_post.title)
		f_post.url = l_post.url	
		f_post.question = get_content(l_post.question)
		f_post.best_answer = get_content(l_post.best_answer)
		f_post.formated_all_answer = get_content(l_post.all_answer).gsub(/(.*)<hr\/>(.*)$/, '\1') unless l_post.all_answer.blank?
		raise if f_post.title.blank? || f_post.formated_all_answer.blank?
		f_post.save!

		ForagerLocal::WenbaPost.update(l_post.id, :is_processed => 'y')
	  rescue => ex
		puts ex.message
        ForagerLocal::WenbaPost.update(l_post.id, :is_processed => 'f')
	  end
	end

	def run
		puts 'start post...'
		tmp_hash = {}
		ForagerLocal::WenbaPost.where(:is_processed => 'n').each do |item|
		  puts item.url
		  next if tmp_hash.include?(item.best_answer)
		  tmp_hash[item.best_answer] = true
		  format(item)
		end
		puts 'done...'
	end

	private
	def get_title(title)
	  return nil if title =~ /^[0-9.,\/~，。？！ +]+$/
	  title
	end

	def get_content(content)
	  content = content.gsub(/\*+/, '')
	  content = content.gsub(/^[0-9０８０３* +~,.，。]+$/, '')
	  content = content.gsub(/QQ/, 'QQ(29928649)')
	  content = gsub(/[a-z:\/.-_+]*xiangrikui[a-z:\/.-_+]*/, '')
	  content = gsub(/向日葵|葵网/, '成都保险咨询网')
	end
end

if __FILE__ == $0
  Formater.new.run
end