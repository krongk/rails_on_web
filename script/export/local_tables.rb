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
		set_table_name 'hexun_post_format'
	end

	class WenbaRunKey < LocalBase
		set_table_name 'wenba_run_key'
		has_many :wenba_posts
	end

	class WenbaPost < LocalBase
		set_table_name 'wenba_post'
		belongs_to :wenba_run_key
	end

	class WenbaPostFormat < LocalBase
		set_table_name 'wenba_post_format'
	end

	class WenbaProduct < LocalBase
		set_table_name 'wenba_product'
	end

end