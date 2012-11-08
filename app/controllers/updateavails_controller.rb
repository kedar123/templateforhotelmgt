class UpdateavailsController < ApplicationController
  # GET /updateavails
  # GET /updateavails.json
  def index
    #updateavails = Updateavail.update_avail

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @updateavails }
    end
  end

  # GET /updateavails/1
  # GET /updateavails/1.json
  def show
    @updateavail = Updateavail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @updateavail }
    end
  end

  # GET /updateavails/new
  # GET /updateavails/new.json
  def new
    #@updateavail = Updateavail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @updateavail }
    end
  end

  # GET /updateavails/1/edit
  def edit
    @updateavail = Updateavail.find(params[:id])
  end

  # POST /updateavails
  # POST /updateavails.json
  def create
    @updateavail = Updateavail.update_avail(params)

    respond_to do |format|
      if @updateavail.body.include?("<boolean xmlns=\"http://www.reconline.com/\">true</boolean>")
        flash[:notice] = 'Updateavail was successfully created.'
        format.html { redirect_to  :action=>:index  }
        format.json { render json: @updateavail, status: :created, location: @updateavail }
      else
        flash[:notice] = @updateavail.body
        format.html { render action: "new" }
        format.json { render json: @updateavail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /updateavails/1
  # PUT /updateavails/1.json
  def update
    @updateavail = Updateavail.find(params[:id])

    respond_to do |format|
      if @updateavail.update_attributes(params[:updateavail])
        format.html { redirect_to @updateavail, notice: 'Updateavail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @updateavail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /updateavails/1
  # DELETE /updateavails/1.json
  def destroy
    @updateavail = Updateavail.find(params[:id])
    @updateavail.destroy

    respond_to do |format|
      format.html { redirect_to updateavails_url }
      format.json { head :no_content }
    end
  end
end
