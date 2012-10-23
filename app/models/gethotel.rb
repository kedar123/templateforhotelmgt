require 'net/http'
class Gethotel  <  ActiveRecord::Base
    
   

     
  def self.get_hotels(params)
    #super("User"=>"string","Password"=>"string").to_hash
    uri = URI('http://www.reconline.com/recoupdate/update.asmx/GetHotels')
  
    
  res = Net::HTTP.post_form(uri, 'User'=>params[:User],'Password'=>params[:Password])
    p "the paaramsmsmsms"
    p res.inspect
    p res.to_hash
    p res.body.include?("<boolean xmlns=\"http://www.reconline.com/\">true</boolean>")
    p res.body
    res.to_hash
    res  
  end
end
