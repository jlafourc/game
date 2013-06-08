class IndividusController < ApplicationController
  # GET /individus
  # GET /individus.json
  def index
    @individus = Individu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @individus }
    end
  end

  # GET /individus/1
  # GET /individus/1.json
  def show
    @individu = Individu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @individu }
    end
  end

  # GET /individus/new
  # GET /individus/new.json
  def new
    @individu = Individu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @individu }
    end
  end

  # GET /individus/1/edit
  def edit
    @individu = Individu.find(params[:id])
  end

  # POST /individus
  # POST /individus.json
  def create
    @individu = Individu.new(params[:individu])

    respond_to do |format|
      if @individu.save
        format.html { redirect_to @individu, notice: 'Individu was successfully created.' }
        format.json { render json: @individu, status: :created, location: @individu }
      else
        format.html { render action: "new" }
        format.json { render json: @individu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /individus/1
  # PUT /individus/1.json
  def update
    @individu = Individu.find(params[:id])

    respond_to do |format|
      if @individu.update_attributes(params[:individu])
        format.html { redirect_to @individu, notice: 'Individu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @individu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /individus/1
  # DELETE /individus/1.json
  def destroy
    @individu = Individu.find(params[:id])
    @individu.destroy

    respond_to do |format|
      format.html { redirect_to individus_url }
      format.json { head :no_content }
    end
  end
end
