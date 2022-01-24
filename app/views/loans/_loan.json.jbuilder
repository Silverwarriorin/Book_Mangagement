json.extract! loan, :id, :book_id, :student_name, :student_id, :date_out, :date_in, :created_at, :updated_at
json.url loan_url(loan, format: :json)
