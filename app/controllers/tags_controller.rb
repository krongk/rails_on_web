class TagsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show]

  def show
    @tag = params[:id] =~ /\d+/ ? Tag.find_by_id(params[:id]) : Tag.find_by_name(params[:id])
    @tag ||= Tag.last

    #search from news_items
    @news_items = NewsItem.where("title regexp '#{@tag.name}'").paginate(:per_page => 40, :page => params[:page] || 1)
  end
end
