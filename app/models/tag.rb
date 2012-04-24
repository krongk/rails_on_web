class Tag < ActiveRecord::Base
  def self.recent(count)
    Tag.order("RAND()").limit(count)
  end
end
