class SetdsController < ApplicationController
  # GET /setds
  # GET /setds.json
  def index
    setds = Setd.set_ds

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @setds }
    end
  end

  # GET /setds/1
  # GET /setds/1.json
  def show
    @setd = Setd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @setd }
    end
  end

  # GET /setds/new
  # GET /setds/new.json
  def new
    @setd = Setd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @setd }
    end
  end

  # GET /setds/1/edit
  def edit
    @setd = Setd.find(params[:id])
  end

  # POST /setds
  # POST /setds.json
  def create
    @setd = Setd.new(params[:setd])

    respond_to do |format|
      if @setd.save
        format.html { redirect_to @setd, notice: 'Setd was successfully created.' }
        format.json { render json: @setd, status: :created, location: @setd }
      else
        format.html { render action: "new" }
        format.json { render json: @setd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /setds/1
  # PUT /setds/1.json
  def update
    @setd = Setd.find(params[:id])

    respond_to do |format|
      if @setd.update_attributes(params[:setd])
        format.html { redirect_to @setd, notice: 'Setd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @setd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setds/1
  # DELETE /setds/1.json
  def destroy
    @setd = Setd.find(params[:id])
    @setd.destroy

    respond_to do |format|
      format.html { redirect_to setds_url }
      format.json { head :no_content }
    end
  end
end
