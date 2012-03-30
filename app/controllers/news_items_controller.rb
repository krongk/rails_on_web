class NewsItemsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]

  def index
    @news_items = NewsItem.paginate(:per_page => 40, :page => params[:page] || 1)
  end
  
  def show
    @news_item = params[:id] =~ /\d+/ ? NewsItem.find_by_id(params[:id]) : NewsItem.find_by_title(params[:id])
    @news_item ||= NewsItem.last
    unless @news_item.external_url.blank?
        redirect_to @news_item.external_url, :layout => nil
    end
  end
end
