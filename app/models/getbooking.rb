require 'net/http'
class Getbooking   <  ActiveRecord::Base
  # attr_accessible :title, :body
  # include Savon::Model
  
 # actions :get_bookings
  
      

  #document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

      
  def self.get_bookings(params)
   # super("User"=>"string","Password"=>"string","idHotel"=>"string","idSystem"=>"string","ForeignPropCode"=>"string",
   #     "idRSV"=>"string","StartDate"=>"string", "EndDate"=>"string","StartCreationDate"=>"string","EndCreationDate"=>"string").to_hash  end
  
  
  
   uri = URI('http://test.reconline.com/recoupdate/update.asmx/GetBookings')
  
    
  res = Net::HTTP.post_form(uri, "User"=>params[:User],"Password"=>params[:Password],"idHotel"=>params[:idHotel],"idSystem"=>params[:idSystem],"ForeignPropCode"=>params[:ForeignPropCode],
        "idRSV"=>params[:idRSV],"StartDate"=>params[:StartDate], "EndDate"=>params[:EndDate],"StartCreationDate"=>params[:StartCreationDate],"EndCreationDate"=>params[:EndCreationDate])
    logger.info "the paaramsmsmsms"
    logger.info res.inspect
    logger.info res.to_hash
    logger.info res.body.include?("<boolean xmlns=\"http://www.reconline.com/\">true</boolean>")
    logger.info res.body
    res.to_hash
    res  
  end
  
  
  
  
  
  end
