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
require "pp"

class Migrator
	def initialize
	end
  
	def migrate(mod, item)
	  begin
		c_category                 = ForagerCommon::ProductCate.find_or_create_by_name(item.company)
		c_product                  = ForagerCommon::ProductItem.new
		c_product.product_cate_id  = c_category.id
		c_product.title            = item.title
		c_product.description      =  merge_description(item)
		c_product.save!

		mod.update(item.id, :is_migrated => 'y')
	  rescue => ex
		puts ex.message
        mod.update(item.id, :is_migrated => 'f')
	  end
	end

	def run
		puts 'start migrate product...'
		count = 0
		['WenbaProduct'].each do |klass|
			mod = eval "ForagerLocal::#{klass}"
			loop  do
				result = mod.where(:is_migrated => 'n').limit(500)
				puts count += result.size
				break if result.size == 0
				result.each do |item|
					migrate(mod, item)	
				end
		    end
		end
		puts 'done...'
	end

	private
	# item.summary
	# item.tese,
	# item.shili,
	# item.zeren
	# item.zemian
	# item.wenda
	def merge_description(item)
		desc_arr = []
		desc_arr << get_description("保险产品概述", item.summary)
		desc_arr << get_description("保险产品特色", item.tese)
		desc_arr << get_description("保险投保实例", item.shili)
		desc_arr << get_description("保险责任", item.zeren)
		desc_arr << get_description("保险责任免除", item.zemian)
		desc_arr.join("\n")
	end

	def get_description(title, desc)
		return '' if desc.blank?
    desc_arr = []
		desc_arr << %{\n<h3 class="sub_title">#{title}</h3>}
		desc_arr << %{<div class="sub_main">#{desc.gsub(/\n/, '<br/>').gsub(/\s{2,}/, "&nbsp;&nbsp;").gsub(/\s/, '').gsub(/[^> ]+(\d+、)/, '<br/>\1').gsub(/[^> ]+(\d+(?:\)|\u3001|\uFF09))/, '<br/>\1')}</div>}
		desc_arr << "<hr/>"
		desc_arr.join("\n")
	end

end

if __FILE__ == $0
  Migrator.new.run
end