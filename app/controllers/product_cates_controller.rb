class ProductCatesController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]
  caches_page :index, :show
  before_filter(only: [:index, :show]) { @page_caching = true }
  cache_sweeper :product_cate_sweeper

  def index
    @product_cates = ProductCate.paginate(:per_page => 6, :page => params[:page] || 1)
  end
  
  def show
    @product_cate = ProductCate.find(params[:id])
    @product_cate ||= ProductCate.first
    @product_items = ProductItem.where(:product_cate_id => @product_cate.id).paginate(:per_page => 30, :page => params[:page] || 1)
  end
end
