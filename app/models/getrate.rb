require "savon_model"
class Getrate  
  include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_rates

  def get_rates
    super("User"=>"string","Password"=>"string","idHotel"=>1,"idSystem"=>1,"ForeignPropCode"=>"string","IncludeRateLevels"=>"string",
    "ExcludeRateLevels"=>"string","IncludeRoomTypes"=>"string","ExcludeRoomTypes"=>"string","RateType"=>"string",
  "StartDate"=>"string","EndDate"=>"string").to_hash
  end
end
