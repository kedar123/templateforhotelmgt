require 'net/http'
 
class Getavailfb  <  ActiveRecord::Base
     

      
     
  def self.get_avail_fb(params)
    
   # super("User"=>"string","Password"=>"string","idHotel"=>"string","idSystem"=>"string","ForeignPropCode"=>"string",
   #     "IncludeRateLevels"=>"string","ExcludeRateLevels"=>"string","IncludeRoomTypes"=>"string","ExcludeRoomTypes"=>"string","StartDate"=>"string",
   #     "EndDate"=>"string").to_hash
   
  uri = URI('http://test.reconline.com/recoupdate/update.asmx/GetAvailFB')
  
    
  res = Net::HTTP.post_form(uri, "User"=>params[:User],"Password"=>params[:Password],"idHotel"=>params[:idHotel],"idSystem"=>params[:idSystem],"ForeignPropCode"=>params[:ForeignPropCode],
        "IncludeRateLevels"=>params[:IncludeRateLevels],"ExcludeRateLevels"=>params[:ExcludeRateLevels],"IncludeRoomTypes"=>params[:IncludeRoomTypes],"ExcludeRoomTypes"=>params[:ExcludeRoomTypes],"StartDate"=>params[:StartDate],
        "EndDate"=>params[:EndDate])
    logger.info "the paaramsmsmsms"
    logger.info res.inspect
    logger.info res.to_hash
    logger.info res.body.include?("<boolean xmlns=\"http://www.reconline.com/\">true</boolean>")
    logger.info res.body
    res.to_hash
    res 
  end
 
end
