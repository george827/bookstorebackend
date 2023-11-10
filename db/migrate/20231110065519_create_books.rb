class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :year_of_release
      t.string :genre
      t.string :isbn
      t.integer :quatity
      t.boolean :status

      t.timestamps
    end
  end
end
