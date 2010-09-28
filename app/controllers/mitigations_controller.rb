class MitigationsController < ApplicationController
  # GET /mitigations
  # GET /mitigations.xml
  def index
    @mitigations = Mitigation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mitigations }
    end
  end

  # GET /mitigations/1
  # GET /mitigations/1.xml
  def show
    @mitigation = Mitigation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mitigation }
    end
  end
  
  def search
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mitigations }
    end
  end

  # GET /mitigations/new
  # GET /mitigations/new.xml
  def new
    @mitigation = Mitigation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mitigation }
    end
  end

  # GET /mitigations/1/edit
  def edit
    @mitigation = Mitigation.find(params[:id])
  end

  # POST /mitigations
  # POST /mitigations.xml
  def create
    @mitigation = Mitigation.new(params[:mitigation])

    respond_to do |format|
      if @mitigation.save
        format.html { redirect_to(@mitigation, :notice => 'Mitigation was successfully created.') }
        format.xml  { render :xml => @mitigation, :status => :created, :location => @mitigation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mitigation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mitigations/1
  # PUT /mitigations/1.xml
  def update
    @mitigation = Mitigation.find(params[:id])

    respond_to do |format|
      if @mitigation.update_attributes(params[:mitigation])
        format.html { redirect_to(@mitigation, :notice => 'Mitigation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mitigation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mitigations/1
  # DELETE /mitigations/1.xml
  def destroy
    @mitigation = Mitigation.find(params[:id])
    @mitigation.destroy

    respond_to do |format|
      format.html { redirect_to(mitigations_url) }
      format.xml  { head :ok }
    end
  end
end
