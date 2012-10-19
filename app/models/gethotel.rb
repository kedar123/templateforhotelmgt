require "savon_model"
class Gethotel  
   include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_hotels

  def get_hotels()
    super("User"=>"string","Password"=>"string").to_hash
  end
end
