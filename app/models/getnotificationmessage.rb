require "savon_model"
class Getnotificationmessage  
    include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_notification_messages

  def get_notification_messages()
    super("User"=>"string","Password"=>"string","idHotelList"=>"string").to_hash
  end
end
