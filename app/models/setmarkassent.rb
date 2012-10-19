require "savon_model"
class Setmarkassent  
   include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :booking

  def booking()
    super("User"=>"string","Password"=>"string","idMessageList"=>"string").to_hash
  end
end
