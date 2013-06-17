require 'rubygems'
require 'active_record'

module ForagerLocal

	class LocalBase < ActiveRecord::Base
		self.abstract_class = true
		self.pluralize_table_names = false
		self.store_full_sti_class = false
	end

	db_config = YAML::load_file(File.join(File.dirname(__FILE__), '..', '..', 'config', 'database.yml'))
	LocalBase.establish_connection db_config['local_development']
	LocalBase.connection.execute("set names 'utf8'")

	class HexunPostFormat < LocalBase
		self.table_name =  'hexun_post_format'
	end

	class WenbaRunKey < LocalBase
		self.table_name =  'wenba_run_key'
		has_many :wenba_posts
	end

	class WenbaPost < LocalBase
		self.table_name =  'wenba_post'
		belongs_to :wenba_run_key
	end

	class WenbaPostFormat < LocalBase
		self.table_name =  'wenba_post_format'
	end

	class WenbaProduct < LocalBase
		self.table_name =  'wenba_product'
	end

	#ask
	class AskRunKey < LocalBase
		self.table_name =  'ask_run_key'
		has_many :ask_posts
	end
	class AskPost < LocalBase
		self.table_name =  'ask_post'
		belongs_to :ask_run_key
	end

  #news_item
  class NewsItem < LocalBase
		self.table_name =  'news_item'
	end
	
end