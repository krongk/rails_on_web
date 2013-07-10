class NewsCatesController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]
  caches_page :index, :show
  before_filter(only: [:index, :show]) { @page_caching = true }
  cache_sweeper :news_cate_sweeper

  def show
    @news_cate = params[:id] =~ /^\d+$/ ? NewsCate.find_by_id(params[:id]) : (NewsCate.find_by_en_name(params[:id]) || NewsCate.find_by_en_name(params[:id].gsub(/-/, ' ')))
    @news_cate ||= NewsCate.find(1)
    @news_items = @news_cate.news_items.order('updated_at DESC').paginate(:page => params[:page] || 1)

    #setup workers one day a time
    Cd12333Worker.perform_async if (Time.now - (@news_cate.updated_at.blank? ? Time.new("1000-01-01") : @news_cate.updated_at)) > 86400 && request.host != 'localhost'
    CdhrssWorker.perform_async if (Time.now - (@news_cate.updated_at.blank? ? Time.new("1000-01-01") : @news_cate.updated_at)) > 86400 && request.host != 'localhost'
    SinaNewsWorker.perform_async if (Time.now - (@news_cate.updated_at.blank? ? Time.new("1000-01-01") : @news_cate.updated_at)) > 86400 && request.host != 'localhost'

  end
end
