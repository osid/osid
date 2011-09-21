class AttackersController < ApplicationController
  # GET /attackers
  # GET /attackers.xml
  def index
    @attackers = Attacker.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attackers }
    end
  end

  # GET /attackers/1
  # GET /attackers/1.xml
  def show
    @attacker = Attacker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attacker }
    end
  end

  # GET /attackers/new
  # GET /attackers/new.xml
  def new
    @attacker = Attacker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attacker }
    end
  end

  # GET /attackers/1/edit
  def edit
    @attacker = Attacker.find(params[:id])
  end

  # POST /attackers
  # POST /attackers.xml
  def create
    @attacker = Attacker.new(params[:attacker])

    respond_to do |format|
      if @attacker.save
        format.html { redirect_to(@attacker, :notice => 'Attacker was successfully created.') }
        format.xml  { render :xml => @attacker, :status => :created, :location => @attacker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attacker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attackers/1
  # PUT /attackers/1.xml
  def update
    @attacker = Attacker.find(params[:id])

    respond_to do |format|
      if @attacker.update_attributes(params[:attacker])
        format.html { redirect_to(@attacker, :notice => 'Attacker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attacker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attackers/1
  # DELETE /attackers/1.xml
  def destroy
    @attacker = Attacker.find(params[:id])
    @attacker.destroy

    respond_to do |format|
      format.html { redirect_to(attackers_url) }
      format.xml  { head :ok }
    end
  end
end
