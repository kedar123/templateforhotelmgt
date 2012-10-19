require "savon_model"
class Updaterete 
   
    include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :update_rates

  def update_rates()
    super("User"=>"string","Password"=>"string","idHotel"=>"string","idSystem"=>"string","ForeignPropCode"=>"string",
        "IncludeRateLevels"=>"string","ExcludeRateLevels"=>"string","IncludeRoomTypes"=>"string","ExcludeRoomTypes"=>"string","RateType"=>"string",
        "StartDate"=>"0.0","EndDate"=>2,"SingleOcc"=>1,"DoubleOcc"=>1,"TripleOcc"=>1,"DoublePlusChild"=>1,"RollawayAdult"=>"string","RollawayChild"=>"string","Crib"=>"string","Meals"=>"string","Advance"=>"string","MinStay"=>"string",
        "BlockStay"=>"string","Guarantee"=>"string","Cancel"=>"string","CTAMonday"=>"string","CTATuesday"=>"string",
        "CTAWednesday"=>"string","CTAThursday"=>"string","CTAFriday"=>"string","CTASaturday"=>"string","CTASunday"=>"string",
        "InvalidMonday"=>"string","InvalidTuesday"=>"string","InvalidWednesday"=>"string","InvalidThursday"=>"string","InvalidFriday"=>"string",
        "InvalidSaturday"=>"string","InvalidSunday"=>'string').to_hash
  end
  
  
end
