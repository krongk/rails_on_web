class NewsCate < ActiveRecord::Base
  has_many :news_items

  before_save :translate_en

  def translate_en
    self.en_name = Pinyin.t self.name
  end
end
