class SvsectorsController < ApplicationController
  # GET /svsectors
  # GET /svsectors.xml
  def index
    @svsectors = Svsector.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @svsectors }
    end
  end

  # GET /svsectors/1
  # GET /svsectors/1.xml
  def show
    @svsector = Svsector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @svsector }
    end
  end

  # GET /svsectors/new
  # GET /svsectors/new.xml
  def new
    @svsector = Svsector.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @svsector }
    end
  end

  # GET /svsectors/1/edit
  def edit
    @svsector = Svsector.find(params[:id])
  end

  # POST /svsectors
  # POST /svsectors.xml
  def create
    @svsector = Svsector.new(params[:svsector])

    respond_to do |format|
      if @svsector.save
        format.html { redirect_to(@svsector, :notice => 'Svsector was successfully created.') }
        format.xml  { render :xml => @svsector, :status => :created, :location => @svsector }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @svsector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /svsectors/1
  # PUT /svsectors/1.xml
  def update
    @svsector = Svsector.find(params[:id])

    respond_to do |format|
      if @svsector.update_attributes(params[:svsector])
        format.html { redirect_to(@svsector, :notice => 'Svsector was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @svsector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /svsectors/1
  # DELETE /svsectors/1.xml
  def destroy
    @svsector = Svsector.find(params[:id])
    @svsector.destroy

    respond_to do |format|
      format.html { redirect_to(svsectors_url) }
      format.xml  { head :ok }
    end
  end
end
