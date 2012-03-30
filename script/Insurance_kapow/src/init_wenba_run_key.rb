#forage from: http://wenba.xiangrikui.com/

#add this file to resolve:  `require': no such file to load -- local_tables (LoadError)
$:.unshift(File.dirname(__FILE__))

require 'local_tables'

class InitRunKey

  def initialize
        #only fetch top newly index, not all data.
		@key_list = [
			{:category => '分红保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/1.html',  :per => 30,  :total => 300},
			{:category => '万能保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/2.html',  :per => 30,  :total => 300},
			{:category => '投资连结保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/3.html', :per => 30,  :total => 300},
			{:category => '商业医疗保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/4.html', :per => 30,  :total => 300},
			{:category => '重大疾病保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/5.html', :per => 30,  :total => 300},
			{:category => '商业养老保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/6.html', :per => 30,  :total => 300},
			{:category => '人寿保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/7.html',  :per => 30,  :total => 1200},
			{:category => '少儿保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/8.html',  :per => 30,  :total => 1200},
			{:category => '意外保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/9.html',  :per => 30,  :total => 60},
			{:category => '旅游保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/10.html', :per => 30,  :total => 300},
			{:category => '团体保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/11.html', :per => 30,  :total => 300},
			{:category => '养老保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/12.html', :per => 30,  :total => 420},
			{:category => '医疗保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/13.html', :per => 30,  :total => 300},
			{:category => '生育保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/14.html', :per => 30,  :total => 300},
			{:category => '工伤保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/15.html', :per => 30,  :total => 60},
			{:category => '失业保险', :url => 'http://wenba.xiangrikui.com/baoxianfenleig/16.html', :per => 30,  :total => 60}
		]
	end

  def run
    puts 'start...'
    @key_list.each do |key|
      init_category(key)
    end
  end
  # http://wenba.xiangrikui.com/baoxianfenleig/16.html
	# http://wenba.xiangrikui.com/baoxianfenleig/16_30_30.html
	# http://wenba.xiangrikui.com/baoxianfenleig/16_60_30.html
  def init_category(key)
		WenbaRunKey.find_or_create_by_category_and_url(:category => key[:category], :url => key[:url])
		index = key[:total].to_i
		while index > 0
		  url = key[:url].sub(/\.html$/, '')
		  url = url + '_' + index.to_s  + '_' + key[:per].to_s + '.html'
		  WenbaRunKey.find_or_create_by_category_and_url(:category => key[:category], :url => url)
		  index = index - 30
	  end
	  puts key[:category]
  end
end

if __FILE__ == $0
  InitRunKey.new.run
end