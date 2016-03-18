class Order < ActiveRecord::Base
    validates :Size, presence: true
    
    before_save do
      if self.Size == "small"
        self.Price = 2.00
      elsif self.Size = "medium"
        self.Price = 2.00
      else
        self.Price = 2.00
      end
    end
  
end