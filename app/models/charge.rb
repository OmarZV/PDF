class Charge < ApplicationRecord
  belongs_to :user
  
   def receipt
    Receipts::Receipt.new(
      id: id,
      product: "GoRails",
      company: {
        name: "One Month, Inc.",
        address: "37 Great Jones\nFloor 2\nNew York City, NY 10012",
        email: "teachers@onemonth.com",
        
      },
      line_items: [
        ["Date",           created_at.to_s],
        ["Account Billed", "(#{user.email})"],
        ["Product",        "GoRails"],
        ["Amount",         "$#{amount / 100}.00"],
        ["Charged to",     "{Card_type}"],
        
      ]      
    )
  end
end