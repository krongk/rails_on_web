require 'rubygems'
require 'active_record'

class LocalTableBase < ActiveRecord::Base
	self.abstract_class = true
	self.pluralize_table_names = false
	db_config = YAML::load_file(File.join(File.dirname(__FILE__), '..', 'config', 'database.yml'))
	self.establish_connection db_config['development']
	self.connection.execute("set names 'utf8'")
end

class HexunRunKey < LocalTableBase
end

class WenbaRunKey < LocalTableBase
end