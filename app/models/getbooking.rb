require "savon_model"
class Getbooking  
  # attr_accessible :title, :body
   include Savon::Model
  
  actions :get_bookings
  
      

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

      
  def get_bookings()
    super("User"=>"string","Password"=>"string","idHotel"=>"string","idSystem"=>"string","ForeignPropCode"=>"string",
        "idRSV"=>"string","StartDate"=>"string", "EndDate"=>"string","StartCreationDate"=>"string","EndCreationDate"=>"string").to_hash  end
  
  end
