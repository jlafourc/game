class AdversairesController < ApplicationController
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
    @adversaire = Adversaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @adversaire }
    end
  end

  # GET /adversaires/1/edit
  def edit
    @adversaire = Adversaire.find(params[:id])
  end

  # POST /adversaires
  # POST /adversaires.json
  def create
    @adversaire = Adversaire.new(params[:adversaire])

    respond_to do |format|
      if @adversaire.save
        format.html { redirect_to @adversaire, :notice => 'Adversaire was successfully created.' }
        format.json { render :json => @adversaire, :status => :created, :location => @adversaire }
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

    respond_to do |format|
      if @adversaire.update_attributes(params[:adversaire])
        format.html { redirect_to @adversaire, :notice => 'Adversaire was successfully updated.' }
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
    @adversaire = Adversaire.find(params[:id])
    @adversaire.destroy

    respond_to do |format|
      format.html { redirect_to adversaires_url }
      format.json { head :no_content }
    end
  end
end
