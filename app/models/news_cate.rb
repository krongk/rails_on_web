class NewsCate < ActiveRecord::Base
  has_many :news_items

  before_save :translate_en
  after_save :expire_cache

  def translate_en
    self.en_name = Pinyin.t self.name
    self.en_name = self.en_name.gsub(/\s+/, '-')
  end

  def expire_cache
  	cache_path = File.join(Rails.root, 'public', 'news_cates', self.en_name + '.html')
  	if File.exist?(cache_path)
  		FileUtils.rm_rf cache_path
  	end
  end
end
