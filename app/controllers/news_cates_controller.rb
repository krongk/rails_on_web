class NewsCatesController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]

  def show
    @news_cate = params[:id] =~ /\d+/ ? NewsCate.find_by_id(params[:id]) : NewsCate.find_by_name(params[:id])
    @news_cate ||= NewsCate.find(1)
    @news_items = @news_cate.news_items.paginate(:per_page => 55, :page => params[:page] || 1) 
  end
end
