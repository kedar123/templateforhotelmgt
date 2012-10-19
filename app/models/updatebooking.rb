require "savon_model"
class Updatebooking  
    include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :update_booking

  def update_booking()
    super("User"=>"string","Password"=>"string","idRSV"=>"string","CorrCheckin"=>"string",
        "CorrCheckout"=>"string","CorrRate"=>"string","CorrComm"=>"string","CorrRoomType"=>"string","CorrRoomNumber"=>"string",
        "CorrRemark"=>"0.0","ReasonCode"=>2,"CommCode"=>1,"CorrRateCode"=>1,"CorrAdults"=>1,"CorrChildren"=>1,"CorrCrib"=>"string").to_hash
  end
end
