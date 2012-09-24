class RencontresController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /rencontres
  # GET /rencontres.json
  def index
    @rencontres = Rencontre.order("jour, heure")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @rencontres }
    end
  end

  # GET /rencontres/1
  # GET /rencontres/1.json
  def show
    @rencontre = Rencontre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @rencontre }
    end
  end

  # GET /rencontres/new
  # GET /rencontres/new.json
  def new
    @rencontre = Rencontre.new
    @rencontre.heure = nil
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @rencontre }
    end
  end

  # GET /rencontres/1/edit
  def edit
    @rencontre = Rencontre.find(params[:id])
  end

  # POST /rencontres
  # POST /rencontres.json
  def create
    if params[:rencontre]["heure(4i)"] == "" and params[:rencontre]["heure(5i)"] == ""
      params[:rencontre]["heure(1i)"] = ""
      params[:rencontre]["heure(2i)"] = ""
      params[:rencontre]["heure(3i)"] = ""            
    end
    
    @rencontre = Rencontre.new(params[:rencontre])

    respond_to do |format|
      if @rencontre.save
        format.html { redirect_to @rencontre, :notice => 'Rencontre was successfully created.' }
        format.json { render :json => @rencontre, :status => :created, :location => @rencontre }
      else
        format.html { render :action => "new" }
        format.json { render :json => @rencontre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rencontres/1
  # PUT /rencontres/1.json
  def update
    if params[:rencontre]["heure(4i)"] == "" and params[:rencontre]["heure(5i)"] == ""
      params[:rencontre]["heure(1i)"] = ""
      params[:rencontre]["heure(2i)"] = ""
      params[:rencontre]["heure(3i)"] = ""            
    end
    
    @rencontre = Rencontre.find(params[:id])
    respond_to do |format|
      if @rencontre.update_attributes(params[:rencontre])
        format.html { redirect_to @rencontre, :notice => 'Rencontre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @rencontre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rencontres/1
  # DELETE /rencontres/1.json
  def destroy
    @rencontre = Rencontre.find(params[:id])
    @rencontre.destroy

    respond_to do |format|
      format.html { redirect_to rencontres_url }
      format.json { head :no_content }
    end
  end
  
  def calendrier
    respond_to do |format|
      format.xlsx
    end
  end
  
end
