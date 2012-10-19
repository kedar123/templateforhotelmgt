require "savon_model"
class Gethotelstaticdatum  
 include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_hotel_static_data

  def get_hotel_static_data()
    super("User"=>"string","Password"=>"string","idHotel"=>"string").to_hash
  end
end
