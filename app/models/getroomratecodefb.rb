require "savon_model"
class Getroomratecodefb  
     include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_room_rate_codes_fb

  def get_room_rate_codes_fb()
      super("User"=>"string","Password"=>"string","idHotel"=>"string","idSystem"=>"string","ForeignPropCode"=>"string").to_hash
   end
end
