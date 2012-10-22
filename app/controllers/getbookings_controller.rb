class GetbookingsController < ApplicationController
  # GET /getbookings
  # GET /getbookings.json
  def index
    
   # getbook = Getbooking.get_bookings
    p "the getbook response"
    #p getbook
    p "getbookkkkkkkk"

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @getbookings }
    #end
  end

  # GET /getbookings/1
  # GET /getbookings/1.json
  def show
    @getbooking = Getbooking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @getbooking }
    end
  end

  # GET /getbookings/new
  # GET /getbookings/new.json
  def new
    #@getbooking = Getbooking.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @getbooking }
    end
  end

  # GET /getbookings/1/edit
  def edit
    @getbooking = Getbooking.find(params[:id])
  end

  # POST /getbookings
  # POST /getbookings.json
  def create
    getbooking = Getbooking.get_bookings(params)

    respond_to do |format|
      if getbooking.body.include?("<boolean xmlns=\"http://www.reconline.com/\">true</boolean>")
        flash[:notice] = 'Getbooking was successfully created.'
        format.html { redirect_to @getbooking  }
        format.json { render json: @getbooking, status: :created, location: @getbooking }
      else
        flash[:notice] = getbooking.body
        format.html { render action: "new" }
        format.json { render json: @getbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /getbookings/1
  # PUT /getbookings/1.json
  def update
    @getbooking = Getbooking.find(params[:id])

    respond_to do |format|
      if @getbooking.update_attributes(params[:getbooking])
        format.html { redirect_to @getbooking, notice: 'Getbooking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @getbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /getbookings/1
  # DELETE /getbookings/1.json
  def destroy
    @getbooking = Getbooking.find(params[:id])
    @getbooking.destroy

    respond_to do |format|
      format.html { redirect_to getbookings_url }
      format.json { head :no_content }
    end
  end
end
