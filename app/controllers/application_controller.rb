#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_news_cates

  def load_news_cates
    news_cates = NewsCate.all
    news_cates3 = news_cates.group_by{|i| news_cates.index(i)%3}
    Rails.cache.write('news_cates3', news_cates3)
  end

  def locate
  	#ip = request.remote_id
  	ip = '118.113.226.34'
  	unless Rails.cache.exist?(ip)
	  	location = GeoLocation.find(ip)
	  	location[:country] = location[:country] == 'China' ? '中国' : location[:country]
	  	location[:region] = find_region(location[:region]) unless location[:region].blank?
	  	location[:city] = find_city(location[:city]) unless location[:city].blank?
      Rails.cache.write(ip, location)
	  end
  end

 # #global varite
 # {"site_name"=>"欧美龙洗衣连锁", 
 #   "site_domain"=>"www.omero-china.com", 
 #   "site_email"=>"master@omero-china.com", 
 #   "site_phone"=>"400-123-800", 
 #   "admin_email"=>"admin@omero-china.com", 
 #   "admin_confirm_email"=>"omero.china@gmail.com"}
  # unless $sites
  #   $sites = {}
  #   Site.all.each do |s|
  #     $sites[s.name.to_sym] = s.value
  #   end
  # end

  private
  def find_region(region)
    regions = Region.where("en_name regexp '^#{region}'").limit(1)
    unless regions.empty?
      return regions.first.name
    end
    region
  end

  def find_city(city)
    cities = City.where("en_name regexp '^#{city}'").limit(1)
    unless cities.empty?
      return cities.first.name
    end
    city
  end
end

##==About Cache Key
# Rails.cache.exist?('speed')         # => false
# Rails.cache.read('speed')           # => nil
# Rails.cache.write('speed', 'fast!') # => true
# Rails.cache.exist?('speed')         # => true
# Rails.cache.read('speed')           # => "fast!"