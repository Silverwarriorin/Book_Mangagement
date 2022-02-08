class Book < ApplicationRecord
  has_many :loans
  
  
  def borrowed?
    !loans.current.empty?
  end
  
  def borrow(student)
    Loan.create( book: self, student: student, date_out: Time.now)
  end
  
  def return
    loans.current[0].return
  end
  
end
