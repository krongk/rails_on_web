# == Usage
# > ruby migrate_data.rb 
# this script use to migrate local data to common.
# steps:
# 1. check local db
#		 format content
# 2. run migrate_data.rb 
# 3. manually add common category.en_name

require "rubygems"
require "local_tables"
require "common_tables"
require "pp"

class Migrator
	def initialize
	end

	def migrate(l_post)
	  begin
	    # category
			c_category = ForagerCommon::Category.find_or_create_by_name(l_post.wenba_run_key.category)
			c_post = c_category.post_wenbas.new
			c_post.title						= l_post.title
			c_post.question				  = l_post.question
			c_post.best_answer			= l_post.best_answer
			c_post.all_answer				= l_post.formated_all_answer
			c_post.migrated_post_id = l_post.id
			c_post.url							= l_post.url.to_s
			c_post.meta_key					= "成都保险咨询，#{l_post.wenba_run_key.category},#{l_post.title}"
			c_post.meta_description = "成都，成都保险，保险咨询，免费咨询，成都保险咨询，#{l_post.wenba_run_key.category},#{l_post.title}"

			c_post.data_import_key	= '2011.06.18'
			c_post.import_source		= 'wenba'
			c_post.save!

			ForagerLocal::WenbaPost.update(l_post.id, :is_migrated => 'y')
			puts l_post.id
		rescue => ex
		  puts ex.message
      ForagerLocal::WenbaPost.update(l_post.id, :is_migrated => 'f')
		end
	end

	def run
		puts 'start ...'
		loop  do 
		  result = ForagerLocal::WenbaPost.where(:is_migrated => 'n').limit(1000)
			break if result.size == 0
			result.each do |l_post|
		    migrate(l_post)
		  end
		end
		puts 'done...'
	end

end

if __FILE__ == $0
  Migrator.new.run
end


=begin 

=end