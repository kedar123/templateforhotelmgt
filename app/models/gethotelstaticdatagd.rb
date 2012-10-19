require "savon_model"
class Gethotelstaticdatagd  
   include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_hotel_static_data_gds

  def get_hotel_static_data_gds()
    super("User"=>"string","Password"=>"string","idGDS"=>"string","PropertyCode"=>"string").to_hash
  end
end
