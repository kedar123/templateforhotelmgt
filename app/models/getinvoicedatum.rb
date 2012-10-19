require "savon_model"
class Getinvoicedatum  
   include Savon::Model

  document "http://www.reconline.com/recoupdate/update.asmx?wsdl"
  

     actions :get_invoice_data

  def get_invoice_data()
    super("User"=>"string","Password"=>"string","StartDate"=>"string","EndDate"=>"string").to_hash
  end
end
