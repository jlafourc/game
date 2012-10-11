class AdversairesController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /adversaires
  # GET /adversaires.json
  def index
    @adversaires = Adversaire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @adversaires }
    end
  end

  # GET /adversaires/1
  # GET /adversaires/1.json
  def show
    @adversaire = Adversaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @adversaire }
    end
  end

  # GET /adversaires/new
  # GET /adversaires/new.json
  def new
    @equipe = Equipe.find(params[:equipe_id])
    
    @adversaire = Adversaire.new
    @adversaire.equipe = @equipe

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @adversaire }
    end
  end

  # GET /adversaires/1/edit
  def edit
    @equipe = Equipe.find(params[:equipe_id])
    @adversaire = Adversaire.find(params[:id])
  end

  # POST /adversaires
  # POST /adversaires.json
  def create
    @adversaire = Adversaire.new(params[:adversaire])
    @equipe = Equipe.find(params[:equipe_id])

    respond_to do |format|
      if @adversaire.save
        format.html { redirect_to @equipe, :notice => 'Adversaire was successfully created.' }
        format.json { render :json => @adversaire, :status => :created, :location => @equipe }
      else
        format.html { render :action => "new" }
        format.json { render :json => @adversaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adversaires/1
  # PUT /adversaires/1.json
  def update
    @adversaire = Adversaire.find(params[:id])
    @equipe = Equipe.find(params[:equipe_id])
    respond_to do |format|
      if @adversaire.update_attributes(params[:adversaire])
        format.html { redirect_to @equipe, :notice => 'Adversaire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @adversaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adversaires/1
  # DELETE /adversaires/1.json
  def destroy
    @equipe = Equipe.find(params[:equipe_id])
    @adversaire = Adversaire.find(params[:id])
    @adversaire.destroy

    respond_to do |format|
      format.html { redirect_to @equipe }
      format.json { head :no_content }
    end
  end
end
