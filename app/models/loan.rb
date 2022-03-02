class Loan < ApplicationRecord
  belongs_to :book
  belongs_to :student, :class_name => "User"
  
  scope :current, -> { where(date_in: nil) }
  
  
  def return
    self.date_in = Time.now
    self.save!
  end
  
end
