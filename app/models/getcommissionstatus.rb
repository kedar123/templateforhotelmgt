require "savon_model"
class Getcommissionstatus  
 include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_commission_status

  def get_commission_status()
    super("User"=>"string","Password"=>"string","idRSV"=>"string").to_hash
  end
end
