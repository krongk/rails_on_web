require 'rubygems'
require 'active_record'

module ForagerCommon

	class CommonBase < ActiveRecord::Base
			self.abstract_class = true
			self.store_full_sti_class = false
	end

	db_config = YAML::load_file(File.join(File.dirname(__FILE__), '..', '..', 'config', 'database.yml'))
	CommonBase.establish_connection db_config['common_development']
	CommonBase.connection.execute("set names 'utf8'")

	class NewsCate < CommonBase
		has_many :news_items
	end

	class NewsItem < CommonBase
		belongs_to :news_cate
	end

end