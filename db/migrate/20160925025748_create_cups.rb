class CreateCups < ActiveRecord::Migration[5.0]
  def change
    create_table :cups do |t|
      t.integer :year
      t.string :status
      t.integer :number
      t.string :color
      t.string :location
      t.string :size
      t.string :model
      t.string :manufacturer
      t.date :purchasing_date

      t.timestamps
    end
  end
end
