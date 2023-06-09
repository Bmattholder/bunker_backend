class CreateTees < ActiveRecord::Migration[6.1]
  def change
    create_table :tees do |t|
      t.string :name
      t.integer :yardage

      t.timestamps
    end
  end
end
