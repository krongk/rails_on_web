class Page < ActiveRecord::Base
  has_many :page_parts

  def self.recent(count, menu_match = nil)
    if menu_match
      Page.where(:menu_match => menu_match).order("updated_at DESC").limit(count)
    else
      Page.order("updated_at DESC").limit(count)
    end
  end
end
