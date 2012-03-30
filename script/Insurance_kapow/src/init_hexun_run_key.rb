#add this file to resolve:  `require': no such file to load -- local_tables (LoadError)
$:.unshift(File.dirname(__FILE__))

require 'local_tables'

class InitRunKey

  def initialize
		@key_list = [
			{:category => '投保理财技巧', :url => 'http://insurance.hexun.com/tblpjq/index-79.html'},
			{:category => '投保理财案例', :url => 'http://insurance.hexun.com/bxal/index-46.html'},
			{:category => '保险规划', :url => 'http://insurance.hexun.com/bxgh/index-23.html'},
			{:category => '营销与管理', :url => 'http://insurance.hexun.com/bxyxgl/index-19.html'},
			{:category => '行业资讯', :url => 'http://insurance.hexun.com/bxhyzx/index-312.html'},
			{:category => '健康险', :url => 'http://insurance.hexun.com/jkbx/index-9.html'},
			{:category => '意外险', :url => 'http://insurance.hexun.com/ywx/index-5.html'},
			{:category => '养老险', :url => 'http://insurance.hexun.com/ylx/index-5.html'},
			{:category => '投资型保险', :url => 'http://insurance.hexun.com/tzxbx/index-8.html'},
			{:category => '女性险', :url => 'http://insurance.hexun.com/nxx/index-1.html'},
			{:category => '少儿险', :url => 'http://insurance.hexun.com/sex/index-4.html'},
			{:category => '车险', :url => 'http://insurance.hexun.com/cx/index-29.html'},
			{:category => '家财险', :url => 'http://insurance.hexun.com/jcx/index-1.html'},
			{:category => '中国平安公司动态', :url => 'http://insurance.hexun.com/2007/6219/101963075/index-6.html'},
			{:category => '产品信息', :url => 'http://insurance.hexun.com/2007/6219/101963079/index-1.html'},
		]
	end

  def run
    puts 'start...'
    @key_list.each do |key|
      init_category(key)
    end
  end

  def init_category(key)
    url = key[:url]
    if url =~ /^(.*)-(\d+)\.html$/
      index = $2.to_i
      url_str = $1
    end
		raise 'index error' unless index > 0
		#the first page
		HexunRunKey.find_or_create_by_category_and_url(:category => key[:category], :url => url_str.to_s + '.html')
		#the list page
		while index > 0 do
			url =  url_str.to_s + '-' + index.to_s + '.html'
			HexunRunKey.find_or_create_by_category_and_url(:category => key[:category], :url => url)
			index = index - 1
	  end
	  puts key[:category]
  end
end

if __FILE__ == $0
  InitRunKey.new.run
end