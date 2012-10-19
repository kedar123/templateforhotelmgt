require "savon_model"
class Cancelbooking 
  include Savon::Model
 #actions :cancel
  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :cancel 

  def cancel()
    super(:User =>  'user',:Password=>'password',:idRSV=>'idrsv').to_hash
  end


end
