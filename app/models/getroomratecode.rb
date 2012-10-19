require "savon_model"
class Getroomratecode  
     include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_room_rate_codes

  def get_room_rate_codes()
    super("User"=>"string","Password"=>"string","idHotel"=>"string","idSystem"=>"string","ForeignPropCode"=>"string").to_hash
  end
end
