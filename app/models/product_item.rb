class ProductItem < ActiveRecord::Base
  belongs_to :product_cate

  def self.recent(count, cate=nil)
    if cate
      ct = ProductCate.find_by_name(cate)
      return [] if ct.nil?
      return ct.product_items.order("updated_at DESC").limit(count)
    else
      ProductItem.order("updated_at DESC").limit(count)
    end
  end

end
