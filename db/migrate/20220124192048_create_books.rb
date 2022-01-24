class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.text :isbn
      t.text :description
      t.text :link

      t.timestamps
    end
  end
end
