class Order < ActiveRecord::Base
    
   before_save do
        self.VegToppings.gsub!(/[\[\]\"]/,"") if attribute_present?("VegToppings")
        self.NonVegToppings.gsub!(/[\[\]\"]/,"") if attribute_present?("NonVegToppings")
        
   end

  canadian_postal_code = /\A[a-zA-Z]\d{1}[a-zA-Z](\-| |)\d{1}[a-zA-Z]\d{1}\z/
  validates :PostalCode, format: { with: canadian_postal_code }
  validates :Appartment, presence:true
  validates :Street, presence:true
  validates :City, presence:true
  validates :Size, presence:true
  validates :Crust, presence:true
  
  

  
      def Price
        @crust1 = 0
        @TotalPrice = 0
        
        @VegToppingsPrice = 0
        @NonVegToppingsPrice = 0
        @Tax = 0
      
        if self.Size == "Small"
          @TotalPrice = 5.00
        elsif self.Size == "Medium"
          @TotalPrice = 10.00
        elsif self.Size == "Large"
          @TotalPrice = 15.00
        elsif self.Size == "X-Large"
          @TotalPrice = 20.00
        end
        
         if attribute_present?("VegToppings")
         @VegToppingsPrice = self.VegToppings.count(',') * 0.5
         end
        
         if attribute_present?("NonVegToppings")
         @NonVegToppingsPrice = self.NonVegToppings.count(',') * 0.5
         end
        
        
        if self.Crust == "Stuffed Crust"
          @crust1 = 2.00
        end
        
        if self.Province == "Ontario"
           @Tax = 0.13
        elsif self.Province == "Manitoba"
           @Tax = 0.10
        elsif self.Province == "Saskatchewan"
           @Tax = 0.15
        elsif self.Province == "Quebec"
           @Tax = 0.11
        end
            @TotalPrice = @TotalPrice + @crust1 + @VegToppingsPrice + @NonVegToppingsPrice
            
               # return (@TotalPrice)
                return ((@Tax * @TotalPrice) + @TotalPrice)
        
      
      end
end