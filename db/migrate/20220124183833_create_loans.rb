class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.integer :book_id
      t.string :student_name
      t.integer :student_id
      t.datetime :date_out
      t.datetime :date_in

      t.timestamps
    end
  end
end
