class NewsCatesController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]
  caches_page :index, :show
  before_filter(only: [:index, :show]) { @page_caching = true }
  cache_sweeper :news_cate_sweeper

  def show
    @news_cate = params[:id] =~ /^\d+$/ ? NewsCate.find_by_id(params[:id]) : (NewsCate.find_by_en_name(params[:id]) || NewsCate.find_by_en_name(params[:id].gsub(/-/, ' ')))
    @news_cate ||= NewsCate.find(1)
    @news_items = @news_cate.news_items.paginate(:per_page => 55, :page => params[:page] || 1) 

    Cd12333Worker.perform_async if @news_cate.en_name == 'cd12333' && request.host != 'localhost'
    Cd12333Worker.perform_async if @news_cate.en_name == 'cdhrss' && request.host != 'localhost'
  end
end
