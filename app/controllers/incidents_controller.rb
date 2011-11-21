class IncidentsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_filter :authenticate, :only => [:edit, :update]
  before_filter :correct_user, :only => [:edit, :update, :destroy]

  
  # GET /incidents
  # GET /incidents.xml
  def index
    @title = "Incidents"
    
    # sort_column = "updated_at" unless sort_column
    # sort_direction = "desc" unless sort_direction
        
    @incidents = Incident.search(params[:name], params[:pvname], params[:TargetType], params[:AttackerType]).order(sort_column + " " + sort_direction).paginate(:per_page => 3, :page => params[:page])
    
  respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @incidents }
    end
  end

  # GET /incidents/1
  # GET /incidents/1.xml
  def show      
    @incident = Incident.find(params[:id])
    
    @title = @incident.name
    
    @counter = 0
    
    @incident.events.each do |event| 
      @counter += event.sources.count
    end
  end

  # GET /incidents/new
  # GET /incidents/new.xml
  def new
    @incident = Incident.new
    
    @title = "New Incident"    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @incident }
    end
  end
  
  # GET /incidents/1/edit
  def edit
    @incident = Incident.find(params[:id])
  end

  # POST /incidents
  # POST /incidents.xml
  def create
    @incident = Incident.new(params[:incident])
    
    if signed_in?
      @incident.user_id = current_user.id  
    else
      @incident.user_id = 1
    end
    

    respond_to do |format|
      if @incident.save
        format.html { redirect_to(@incident, :notice => 'Incident was successfully created.') }
        format.xml  { render :xml => @incident, :status => :created, :location => @incident }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /incidents/1
  # PUT /incidents/1.xml
  def update
    @incident = Incident.find(params[:id])

    respond_to do |format|
      if @incident.update_attributes(params[:incident])
        format.html { redirect_to(@incident, :notice => 'Incident was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.xml
  def destroy
    @incident = Incident.find(params[:id])
    @incident.destroy

    respond_to do |format|
      format.html { redirect_to(incidents_url) }
      format.xml  { head :ok }
    end
  end

  private
  
  def correct_user
      @incident = Incident.find(params[:id])
      redirect_to(root_path) unless current_user?(@incident.user) || current_user.admin?
  end

  def sort_column
    Incident.column_names.include?(params[:sort]) ? params[:sort] : "firstseen"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
