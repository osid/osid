class PvsectorsController < ApplicationController
  before_filter :authenticate, :except => [ :index, :show]
  before_filter :admin_user, :only => [:show, :edit, :destroy]
  
  # GET /pvsectors
  # GET /pvsectors.xml
  def index
    @pvsectors = Pvsector.all
    @pvsectors.sort! { |a,b| a.name <=> b.name }
    
    @title = "Primary Victim Sector"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pvsectors }
    end
  end

  # GET /pvsectors/1
  # GET /pvsectors/1.xml
  def show
    @pvsector = Pvsector.find(params[:id])

    @title = "Primary Victim Sector Details"

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pvsector }
    end
  end

  # GET /pvsectors/new
  # GET /pvsectors/new.xml
  def new
    @pvsector = Pvsector.new

    @title = "New Primary Victim Sector"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pvsector }
    end
  end

  # GET /pvsectors/1/edit
  def edit
    @pvsector = Pvsector.find(params[:id])
  end

  # POST /pvsectors
  # POST /pvsectors.xml
  def create
    @pvsector = Pvsector.new(params[:pvsector])

    respond_to do |format|
      if @pvsector.save
        format.html { redirect_to(@pvsector, :notice => 'Pvsector was successfully created.') }
        format.xml  { render :xml => @pvsector, :status => :created, :location => @pvsector }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pvsector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pvsectors/1
  # PUT /pvsectors/1.xml
  def update
    @pvsector = Pvsector.find(params[:id])

    respond_to do |format|
      if @pvsector.update_attributes(params[:pvsector])
        format.html { redirect_to(@pvsector, :notice => 'Pvsector was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pvsector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pvsectors/1
  # DELETE /pvsectors/1.xml
  def destroy
    @pvsector = Pvsector.find(params[:id])
    @pvsector.destroy

    respond_to do |format|
      format.html { redirect_to(pvsectors_url) }
      format.xml  { head :ok }
    end
  end
end
