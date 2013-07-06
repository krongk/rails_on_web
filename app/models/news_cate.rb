class NewsCate < ActiveRecord::Base
  has_many :news_items

  before_save :translate_en
  after_save :expire_cate_cache

  def translate_en
    self.en_name = Pinyin.t self.name
    self.en_name = self.en_name.gsub(/\s+/, '-')
  end

  def expire_cate_cache
    cache_index_path = File.join(Rails.root, 'public', 'index.html')
    cache_cate_path = File.join(Rails.root, 'public', 'news_cates', self.en_name + '.html')
    cache_cate_dir = File.join(Rails.root, 'public', 'news_cates', self.en_name)
    FileUtils.rm_rf cache_index_path if File.exist?(cache_index_path)
    FileUtils.rm_rf cache_cate_path if File.exist?(cache_cate_path)
    FileUtils.rm_rf cache_cate_dir if File.exist?(cache_cate_dir)
  end
end
