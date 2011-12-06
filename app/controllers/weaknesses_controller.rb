class WeaknessesController < ApplicationController
  # GET /weaknesses
  # GET /weaknesses.xml
  def index
    @weaknesses = Weakness.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weaknesses }
    end
  end

  # GET /weaknesses/1
  # GET /weaknesses/1.xml
  def show
    @weakness = Weakness.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weakness }
    end
  end

  # GET /weaknesses/new
  # GET /weaknesses/new.xml
  def new
    @weakness = Weakness.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weakness }
    end
  end

  # GET /weaknesses/1/edit
  def edit
    @weakness = Weakness.find(params[:id])
  end

  # POST /weaknesses
  # POST /weaknesses.xml
  def create
    @weakness = Weakness.new(params[:weakness])

    respond_to do |format|
      if @weakness.save
        format.html { redirect_to(@weakness, :notice => 'Weakness was successfully created.') }
        format.xml  { render :xml => @weakness, :status => :created, :location => @weakness }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weakness.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weaknesses/1
  # PUT /weaknesses/1.xml
  def update
    @weakness = Weakness.find(params[:id])

    respond_to do |format|
      if @weakness.update_attributes(params[:weakness])
        format.html { redirect_to(@weakness, :notice => 'Weakness was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weakness.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weaknesses/1
  # DELETE /weaknesses/1.xml
  def destroy
    @weakness = Weakness.find(params[:id])
    @weakness.destroy

    respond_to do |format|
      format.html { redirect_to(weaknesses_url) }
      format.xml  { head :ok }
    end
  end
end
