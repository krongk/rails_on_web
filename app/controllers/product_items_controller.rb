class ProductItemsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]
  caches_page :index, :show
  before_filter(only: [:index, :show]) { @page_caching = true }
  cache_sweeper :product_item_sweeper

  def index
    @product_items = ProductItem.joins(:product_cate).order('product_cates.id ASC').paginate(:per_page => 20, :page => params[:page] || 1)
  end
  
  def show
    @product_item = ProductItem.find(params[:id])
    @product_item ||= ProductItem.first
  end
end
