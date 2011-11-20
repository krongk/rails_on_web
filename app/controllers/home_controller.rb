class HomeController < ApplicationController
  def index
  	redirect_to :action => :site_map
  end

  def help
  end

  def site_map
  end

end
