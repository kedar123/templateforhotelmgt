 require 'net/http'
class Getcommissionstatus   <  ActiveRecord::Base
  

  #document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_commission_status
GetCommissionStatus
  def get_commission_status()
    super("User"=>"string","Password"=>"string","idRSV"=>"string").to_hash
  end
end
