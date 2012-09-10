#encoding: utf-8
class PagesController < ApplicationController
  before_filter :authenticate_admin_user!, :except => [:index, :show, :en]
  caches_page :index, :show
  before_filter(only: [:index, :show]) { @page_caching = true }
  cache_sweeper :page_sweeper


  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.order('updated_at DESC').paginate(:per_page => 30, :page => params[:page] || 1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @is_product = false
    @is_ask = false
    @is_ask = params[:ask]
    #params can be id or path_name
    if params[:id] =~ /^\d+$/
      @page = Page.where(:id => params[:id]).limit(1).first
    else
      @page = Page.where(:path_name => params[:id]).limit(1).first
    end
    @page = Page.find(1) if @page.nil?

    #special action 
    case @page.menu_match
    when 'ask'
      @is_ask = true
    when 'product'
      @is_product = true
    when 'english'
      redirect_to "/en/#{params[:id]}"
      return
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

  def en
    #params can be id or path_name
    if params[:id] =~ /^\d+$/
      @page = Page.where(:id => params[:id]).limit(1).first
    else
      @page = Page.where(:path_name => params[:id]).limit(1).first
    end
    @page = Page.find(1) if @page.nil?


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end
  # GET /pages/new
  # GET /pages/new.json
  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(params[:page])

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render json: @page, status: :created, location: @page }
      else
        format.html { render action: "new" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = Page.find(params[:id])
    @page.destroy unless @page.deletable != 0

    respond_to do |format|
      format.html { redirect_to pages_url }
      format.json { head :ok }
    end
  end
end